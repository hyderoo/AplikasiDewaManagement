// lib/pages/pesanan/pembayaran/payment_history_page.dart

import 'package:dewa_wo_app/core/consts/app_consts.dart';
import 'package:dewa_wo_app/pages/pesanan/pembayaran/history/cubit/payment_history_cubit.dart';
import 'package:dewa_wo_app/core/models/payment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class PaymentHistoryPage extends StatefulWidget {
  final int orderId;
  const PaymentHistoryPage({super.key, required this.orderId});

  @override
  State<PaymentHistoryPage> createState() => _PaymentHistoryPageState();
}

class _PaymentHistoryPageState extends State<PaymentHistoryPage> {
  int? _expandedPaymentId;

  @override
  void initState() {
    super.initState();
    context.read<PaymentHistoryCubit>().loadPaymentHistory(widget.orderId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Pembayaran'),
        centerTitle: true,
      ),
      body: BlocBuilder<PaymentHistoryCubit, PaymentHistoryState>(
        builder: (context, state) {
          if (state is PaymentHistoryLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PaymentHistorySuccess) {
            return _buildContent(state);
          } else if (state is PaymentHistoryError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 64,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context
                        .read<PaymentHistoryCubit>()
                        .loadPaymentHistory(widget.orderId),
                    child: const Text('Coba Lagi'),
                  ),
                ],
              ),
            );
          }

          return const SizedBox();
        },
      ),
      bottomNavigationBar:
          BlocBuilder<PaymentHistoryCubit, PaymentHistoryState>(
        builder: (context, state) {
          if (state is PaymentHistorySuccess) {
            final remainingAmount = state.order.remainingAmount;

            if (remainingAmount > 0) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    context.push('/pesanan/payment/order/${state.order.id}');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Lakukan Pembayaran',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              );
            } else {
              // If fully paid, don't show button
              return const SizedBox();
            }
          }
          return const SizedBox();
        },
      ),
    );
  }

  Color _getPaymentMethodColor(String method) {
    switch (method) {
      case 'bank_transfer':
        return Colors.purple;
      case 'virtual_account':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  IconData _getPaymentMethodIcon(String method) {
    switch (method) {
      case 'bank_transfer':
        return Icons.account_balance;
      case 'virtual_account':
        return Icons.credit_card;
      default:
        return Icons.payment;
    }
  }

  Widget _buildEmptyPaymentHistory() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32),
      alignment: Alignment.center,
      child: Column(
        children: [
          Icon(
            Icons.payment_outlined,
            size: 64,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            'Belum ada riwayat pembayaran',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Lakukan pembayaran untuk melihat riwayat',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(PaymentHistorySuccess state) {
    final formatCurrency = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Order Summary
          Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pesanan #${state.order.orderNumber}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _buildStatusBadge(
                          state.order.isFullyPaid ? 'Lunas' : 'Belum Lunas'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildInfoRow(
                      'Paket', state.order.catalog?.name ?? 'Custom Package'),
                  _buildInfoRow(
                    'Tanggal Acara',
                    DateFormat('dd MMMM yyyy', 'id_ID')
                        .format(DateTime.parse(state.order.eventDate)),
                  ),
                  const Divider(height: 24),
                  _buildInfoRow('Total Harga',
                      formatCurrency.format(double.parse(state.order.price))),
                  _buildInfoRow(
                    'Sudah Dibayar',
                    formatCurrency.format(double.parse(state.order.paidAmount)),
                    valueColor: Colors.green,
                  ),
                  _buildInfoRow(
                    'Sisa Pembayaran',
                    formatCurrency.format(state.order.remainingAmount),
                    valueColor: Colors.pink,
                  ),
                ],
              ),
            ),
          ),

          // Payment progress bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Progress Pembayaran',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: double.parse(state.order.paidAmount) /
                        double.parse(state.order.price),
                    minHeight: 12,
                    backgroundColor: Colors.grey.shade200,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      formatCurrency.format(0),
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    ),
                    Text(
                      '${(double.parse(state.order.paidAmount) / double.parse(state.order.price) * 100).toStringAsFixed(0)}%',
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    ),
                    Text(
                      formatCurrency.format(double.parse(state.order.price)),
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Payment History List
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Riwayat Pembayaran',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                if (state.payments.isEmpty)
                  _buildEmptyPaymentHistory()
                else
                  ...state.payments.map((payment) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: _buildPaymentCard(payment, state),
                      )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, {Color? valueColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: valueColor ?? Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(String status) {
    Color backgroundColor;
    Color textColor;

    if (status == 'Lunas') {
      backgroundColor = Colors.green.shade100;
      textColor = Colors.green.shade800;
    } else if (status == 'Belum Lunas') {
      backgroundColor = Colors.yellow.shade100;
      textColor = Colors.orange.shade800;
    } else if (status == 'Ditolak') {
      backgroundColor = Colors.red.shade100;
      textColor = Colors.red.shade800;
    } else {
      backgroundColor = Colors.grey.shade100;
      textColor = Colors.grey.shade800;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }

  Widget _buildPaymentCard(PaymentModel payment, PaymentHistorySuccess state) {
    final formatCurrency = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    final formatDate = DateFormat('dd MMM yyyy HH:mm', 'id_ID');

    final bool isExpanded = _expandedPaymentId == payment.id;

    final formattedAmount =
        formatCurrency.format(double.tryParse(payment.amount) ?? 0);
    final formattedDate = formatDate.format(DateTime.parse(payment.createdAt));

    final paymentTypeDisplay = {
          'down_payment': 'Uang Muka',
          'installment': 'Cicilan',
          'full_payment': 'Pelunasan',
        }[payment.paymentType] ??
        payment.paymentType;

    final paymentMethodDisplay = {
          'bank_transfer': 'Transfer Bank',
          'virtual_account': 'Virtual Account',
        }[payment.paymentMethod] ??
        payment.paymentMethod;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: payment.status == 'rejected'
              ? Colors.red.shade200
              : Colors.grey.shade200,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Header Section
          InkWell(
            onTap: () {
              setState(() {
                _expandedPaymentId = isExpanded ? null : payment.id;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // Payment Method Icon
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: _getPaymentMethodColor(payment.paymentMethod)
                          .withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      _getPaymentMethodIcon(payment.paymentMethod),
                      color: _getPaymentMethodColor(payment.paymentMethod),
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Payment Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          formattedAmount,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '$paymentTypeDisplay - $paymentMethodDisplay',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Date
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        formattedDate,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Icon(
                        isExpanded
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Expanded Details Section
          if (isExpanded) ...[
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Payment Details
                  _buildPaymentDetails(payment),
                  const SizedBox(height: 16),

                  // Status Section with Icon
                  _buildStatusSection(payment),

                  // Show Payment Proof Image for Bank Transfer
                  if (payment.paymentMethod == 'bank_transfer' &&
                      payment.paymentProof != null) ...[
                    const SizedBox(height: 16),
                    const Text(
                      'Bukti Pembayaran',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // You'll need to replace this with your app's image paths
                    // In a real app, this would be a network image URL
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        '${AppConsts.baseUrl}/storage/${payment.paymentProof!}',
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 150,
                            width: double.infinity,
                            color: Colors.grey.shade200,
                            child: const Center(
                              child: Text('Gambar tidak tersedia'),
                            ),
                          );
                        },
                      ),
                    ),
                  ],

                  // Virtual Account Section
                  if (payment.paymentMethod == 'virtual_account' &&
                      payment.status == 'pending') ...[
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.blue.shade200),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nomor Virtual Account:',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue.shade800,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  payment.vaNumber ?? '-',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade800,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.copy,
                                    color: Colors.blue.shade800),
                                onPressed: () {
                                  if (payment.vaNumber != null) {
                                    Clipboard.setData(
                                        ClipboardData(text: payment.vaNumber!));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content:
                                            Text('Nomor VA berhasil disalin'),
                                        duration: Duration(seconds: 2),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton.icon(
                            onPressed: () {
                              context
                                  .push(
                                '/pesanan/payment/detail/${payment.id}',
                              )
                                  .then(
                                (value) {
                                  // ignore: use_build_context_synchronously
                                  context
                                      .read<PaymentHistoryCubit>()
                                      .loadPaymentHistory(widget.orderId);
                                },
                              );
                            },
                            icon: const Icon(Icons.visibility),
                            label: const Text('Lihat Detail VA'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              minimumSize: const Size(double.infinity, 40),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildPaymentDetails(PaymentModel payment) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ID Pembayaran',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      payment.id.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Metode',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      payment.paymentMethod == 'bank_transfer'
                          ? 'Transfer Bank'
                          : payment.paymentMethod == 'virtual_account'
                              ? 'Virtual Account'
                              : payment.paymentMethod,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bank',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      payment.bankCode?.toUpperCase() ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jenis',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      payment.paymentType == 'down_payment'
                          ? 'Uang Muka'
                          : payment.paymentType == 'installment'
                              ? 'Cicilan'
                              : 'Pelunasan',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (payment.expiryTime != null &&
              payment.paymentMethod == 'virtual_account') ...[
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kadaluarsa',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  DateFormat('dd MMM yyyy HH:mm', 'id_ID').format(
                    DateTime.parse(payment.expiryTime!),
                  ),
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildStatusSection(PaymentModel payment) {
    Color statusColor;
    IconData statusIcon;
    String statusText;
    String statusDetail = '';
    Color bgColor;

    switch (payment.status) {
      case 'verified':
        statusColor = Colors.green;
        statusIcon = Icons.check_circle;
        statusText = 'Terverifikasi';
        bgColor = Colors.green.shade50;

        // If verified, show verification details
        if (payment.verifiedAt != null) {
          statusDetail =
              'Diverifikasi pada ${DateFormat('dd MMM yyyy HH:mm', 'id_ID').format(DateTime.parse(payment.verifiedAt!))}';
        }
        break;
      case 'rejected':
        statusColor = Colors.red;
        statusIcon = Icons.cancel;
        statusText = 'Ditolak';
        bgColor = Colors.red.shade50;

        // If rejected, show rejection reason if available
        // if (payment.rejectionReason != null) {
        //   statusDetail = 'Alasan: ${payment.rejectionReason}';
        // }
        break;
      case 'expired':
        statusColor = Colors.grey;
        statusIcon = Icons.access_time;
        statusText = 'Kadaluarsa';
        bgColor = Colors.grey.shade50;
        break;
      case 'pending':
      default:
        statusColor = Colors.orange;
        statusIcon = Icons.pending;
        statusText = 'Menunggu Verifikasi';
        bgColor = Colors.orange.shade50;

        // If pending VA payment, show note
        if (payment.paymentMethod == 'virtual_account') {
          statusDetail =
              'Pembayaran akan otomatis terverifikasi setelah transfer ke VA';
        }
        break;
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: statusColor.withOpacity(0.3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            statusIcon,
            color: statusColor,
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  statusText,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: statusColor,
                    fontSize: 15,
                  ),
                ),
                if (statusDetail.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    statusDetail,
                    style: TextStyle(
                      fontSize: 13,
                      color: statusColor.withOpacity(0.8),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
