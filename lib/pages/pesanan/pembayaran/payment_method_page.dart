// lib/pages/pesanan/pembayaran/payment_method_page.dart
import 'dart:io';

import 'package:dewa_wo_app/core/consts/app_consts.dart';
import 'package:dewa_wo_app/cubits/payment_method/payment_method_cubit.dart';
import 'package:dewa_wo_app/models/bank_model.dart';
import 'package:dewa_wo_app/models/virtual_account_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

// Payment Type Option model for UI
class PaymentTypeOption {
  final PaymentType type;
  final String title;
  final String description;

  PaymentTypeOption({
    required this.type,
    required this.title,
    required this.description,
  });
}

class PaymentMethodPage extends StatefulWidget {
  final int orderId;
  const PaymentMethodPage({super.key, required this.orderId});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  final TextEditingController _installmentAmountController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<PaymentMethodCubit>().loadPaymentOptions(widget.orderId);
  }

  @override
  void dispose() {
    _installmentAmountController.dispose();
    super.dispose();
  }

  Widget _buildVAOption(VirtualAccountModel va, PaymentMethodSuccess state) {
    bool isSelected = state.selectedVirtualAccount?.id == va.id;

    return InkWell(
      onTap: () {
        context.read<PaymentMethodCubit>().selectVirtualAccount(va);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.pink : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: isSelected
                  ? Icon(Icons.check_circle, color: Colors.pink)
                  : Icon(Icons.circle_outlined, color: Colors.grey.shade300),
            ),
            const SizedBox(width: 16),
            if (va.logo != null) ...[
              SizedBox(
                width: 60,
                height: 20,
                child: Image.network(
                  va.logo!,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Text(
                      va.bankCode.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 8),
            ] else ...[
              SizedBox(
                width: 60,
                height: 20,
                child: Text(
                  va.bankCode.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
              ),
              const SizedBox(width: 8),
            ],
            Expanded(
              child: Text(
                va.name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVirtualAccountInfo(PaymentMethodSuccess state) {
    final formatCurrency = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pilih Virtual Account',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          ...state.virtualAccounts.map((va) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _buildVAOption(va, state),
              )),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 236, 246, 255),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.blue.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.info_outline,
                      color: Colors.blue,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Informasi Virtual Account',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.blue.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Anda akan mendapatkan nomor Virtual Account setelah melanjutkan pembayaran. '
                  'Pembayaran akan diverifikasi secara otomatis begitu Anda transfer ke VA tersebut.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue.shade700,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Bank',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        state.selectedVirtualAccount?.name ?? '-',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue.shade800,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Jumlah',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        formatCurrency.format(state.paymentAmount),
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue.shade800,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(PaymentMethodSuccess state) {
    final bool canProceed =
        (state.selectedPaymentMethod == PaymentMethod.bankTransfer &&
                state.selectedBank != null) ||
            (state.selectedPaymentMethod == PaymentMethod.virtualAccount &&
                state.selectedVirtualAccount != null);

    final bool needsProof =
        state.selectedPaymentMethod == PaymentMethod.bankTransfer &&
            state.paymentProofPath == null;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey[300]!),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                'Batal',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton(
              onPressed: canProceed
                  ? () {
                      if (needsProof) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Harap unggah bukti pembayaran'),
                            backgroundColor: Colors.red,
                          ),
                        );
                        return;
                      }
                      context.read<PaymentMethodCubit>().submitPayment();
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                disabledBackgroundColor: Colors.pink.withOpacity(0.3),
              ),
              child: const Text(
                'Lanjutkan Pembayaran',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metode Pembayaran'),
        centerTitle: true,
      ),
      body: BlocConsumer<PaymentMethodCubit, PaymentMethodState>(
        listener: (context, state) {
          if (state is PaymentMethodSuccess) {
            if (state.message != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message!),
                  backgroundColor: Colors.red,
                ),
              );
            }

            // Update installment amount controller if needed
            if (state.selectedPaymentType == PaymentType.installment) {
              if (_installmentAmountController.text.isEmpty) {
                _installmentAmountController.text =
                    state.paymentAmount.toStringAsFixed(0);
              }
            }
          } else if (state is PaymentMethodError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          } else if (state is PaymentMethodSubmitted) {
            if (state.paymentMethod == PaymentMethod.virtualAccount) {
              context.pushReplacement(
                  '/pesanan/payment/detail/${state.paymentId}');
            } else {
              // For bank transfer, just show success message and go back
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                      'Pembayaran berhasil disubmit! Menunggu verifikasi admin.'),
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.pop(context);
            }
          }
        },
        builder: (context, state) {
          if (state is PaymentMethodLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PaymentMethodSuccess) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildOrderSummary(state),
                  const SizedBox(height: 16),
                  _buildPaymentTypeSelection(state),
                  const SizedBox(height: 16),
                  _buildPaymentMethodSelection(state),
                  const SizedBox(height: 16),
                  if (state.selectedPaymentMethod == PaymentMethod.bankTransfer)
                    _buildBankTransferDetails(state),
                  if (state.selectedPaymentMethod ==
                      PaymentMethod.virtualAccount)
                    _buildVirtualAccountInfo(state),
                  const SizedBox(height: 24),
                  _buildActionButtons(state),
                  const SizedBox(height: 64),
                ],
              ),
            );
          } else if (state is PaymentMethodError) {
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
                        .read<PaymentMethodCubit>()
                        .loadPaymentOptions(widget.orderId),
                    child: const Text('Coba Lagi'),
                  ),
                ],
              ),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }

  Widget _buildOrderSummary(PaymentMethodSuccess state) {
    final eventDate = DateTime.parse(state.order.eventDate);
    final formattedDate = DateFormat('dd MMMM yyyy', 'id_ID').format(eventDate);

    final formatCurrency = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Ringkasan Pesanan',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Paket',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    state.order.catalog?.name ?? 'Custom Package',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Tanggal Acara',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    formattedDate,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Total Harga',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    formatCurrency.format(double.parse(state.order.price)),
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            if (double.parse(state.order.paidAmount) > 0) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Sudah Dibayar',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      formatCurrency
                          .format(double.parse(state.order.paidAmount)),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Sisa Pembayaran',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      formatCurrency.format(state.order.remainingAmount),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.pink,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentTypeSelection(PaymentMethodSuccess state) {
    final formatCurrency = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    final double paidAmount = double.tryParse(state.order.paidAmount) ?? 0;
    final bool hasExistingPayment = paidAmount > 0;

    // Different payment options based on existing payments
    final List<PaymentTypeOption> paymentOptions = [];

    if (hasExistingPayment) {
      // If already has payment: installment and full payment options
      paymentOptions.add(
        PaymentTypeOption(
          type: PaymentType.installment,
          title: 'Cicilan',
          description: 'Bayar sebagian dari sisa pembayaran',
        ),
      );
      paymentOptions.add(
        PaymentTypeOption(
          type: PaymentType.fullPayment,
          title: 'Pelunasan',
          description: formatCurrency.format(state.order.remainingAmount),
        ),
      );
    } else if (state.order.requiresDownPayment) {
      // If requires down payment: down payment and full payment options
      paymentOptions.add(
        PaymentTypeOption(
          type: PaymentType.downPayment,
          title: 'Uang Muka',
          description:
              formatCurrency.format(state.order.downPaymentAmountValue),
        ),
      );
      paymentOptions.add(
        PaymentTypeOption(
          type: PaymentType.fullPayment,
          title: 'Pembayaran Penuh',
          description: formatCurrency.format(double.parse(state.order.price)),
        ),
      );
    } else {
      // If no down payment required: only full payment
      paymentOptions.add(
        PaymentTypeOption(
          type: PaymentType.fullPayment,
          title: 'Pembayaran Penuh',
          description: formatCurrency.format(double.parse(state.order.price)),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Jenis Pembayaran',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  paymentOptions.length > 2 ? 2 : paymentOptions.length,
              childAspectRatio: 2.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: paymentOptions.length,
            itemBuilder: (context, index) {
              final option = paymentOptions[index];
              final bool isSelected = state.selectedPaymentType == option.type;

              return InkWell(
                onTap: () {
                  context
                      .read<PaymentMethodCubit>()
                      .selectPaymentType(option.type);
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected ? Colors.pink : Colors.grey.shade300,
                      width: isSelected ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                    color: isSelected ? Colors.pink.shade50 : Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            isSelected
                                ? Icons.radio_button_checked
                                : Icons.radio_button_off,
                            color: isSelected ? Colors.pink : Colors.grey,
                            size: 18,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            option.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isSelected
                                  ? Colors.pink.shade700
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.only(left: 26),
                        child: Text(
                          option.description,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

          // Custom amount input for installment
          if (state.selectedPaymentType == PaymentType.installment) ...[
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Jumlah Pembayaran',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _installmentAmountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text('Rp', style: TextStyle(fontSize: 14)),
                      ),
                      prefixIconConstraints:
                          const BoxConstraints(minWidth: 0, minHeight: 0),
                      hintText: '0',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        double? amount = double.tryParse(value);
                        if (amount != null) {
                          context
                              .read<PaymentMethodCubit>()
                              .updateInstallmentAmount(amount);
                        }
                      }
                    },
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Maks: ${formatCurrency.format(state.order.remainingAmount)}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildPaymentMethodSelection(PaymentMethodSuccess state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Metode Pembayaran',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          _buildMethodOption(
            title: 'Transfer Bank',
            subtitle: 'Transfer manual ke rekening Bank',
            icon: Icons.account_balance,
            isSelected:
                state.selectedPaymentMethod == PaymentMethod.bankTransfer,
            onTap: () => context
                .read<PaymentMethodCubit>()
                .selectPaymentMethod(PaymentMethod.bankTransfer),
          ),
          const SizedBox(height: 8),
          _buildMethodOption(
            title: 'Virtual Account',
            subtitle: 'Pembayaran otomatis melalui Virtual Account',
            icon: Icons.credit_card,
            isSelected:
                state.selectedPaymentMethod == PaymentMethod.virtualAccount,
            onTap: () => context
                .read<PaymentMethodCubit>()
                .selectPaymentMethod(PaymentMethod.virtualAccount),
          ),
        ],
      ),
    );
  }

  Widget _buildMethodOption({
    required String title,
    required String subtitle,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.pink : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: isSelected ? Colors.pink.shade100 : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                icon,
                color: isSelected ? Colors.pink : Colors.grey.shade700,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.pink.shade700 : Colors.black,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              isSelected ? Icons.check_circle : Icons.circle_outlined,
              color: isSelected ? Colors.pink : Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBankTransferDetails(PaymentMethodSuccess state) {
    final formatCurrency = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pilih Bank',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          ...state.banks.map((bank) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _buildBankOption(bank, state),
              )),
          if (state.selectedBank != null) ...[
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Detail Pembayaran',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Bank',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          state.selectedBank!.name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'No. Rekening',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              state.selectedBank?.accountNumber ?? '-',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 4),
                            InkWell(
                              child: Icon(Icons.copy,
                                  size: 18, color: Colors.grey[600]),
                              onTap: () {
                                Clipboard.setData(ClipboardData(
                                    text: state.selectedBank?.accountNumber ??
                                        '-'));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text('Nomor rekening berhasil disalin'),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Atas Nama',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          state.selectedBank?.accountName ?? '-',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Jumlah',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          formatCurrency.format(state.paymentAmount),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.pink,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Payment proof upload section
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bukti Pembayaran',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (state.paymentProofPath != null) ...[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.file(
                        File(state.paymentProofPath!),
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Center(
                      child: TextButton.icon(
                        onPressed: () => context
                            .read<PaymentMethodCubit>()
                            .pickPaymentProof(),
                        icon: const Icon(Icons.refresh),
                        label: const Text('Ganti Gambar'),
                      ),
                    ),
                  ] else
                    InkWell(
                      onTap: () =>
                          context.read<PaymentMethodCubit>().pickPaymentProof(),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.upload_file,
                              size: 48,
                              color: Colors.grey[400],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Upload Bukti Pembayaran',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Format: JPG, JPEG, PNG',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildBankOption(BankModel bank, PaymentMethodSuccess state) {
    bool isSelected = state.selectedBank?.id == bank.id;

    return InkWell(
      onTap: () {
        context.read<PaymentMethodCubit>().selectBank(bank);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.pink : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: isSelected
                  ? Icon(Icons.check_circle, color: Colors.pink)
                  : Icon(Icons.circle_outlined, color: Colors.grey.shade300),
            ),
            const SizedBox(width: 16),
            if (bank.logo != null) ...[
              SizedBox(
                width: bank.name.length > 15 ? 40 : 60,
                height: 20,
                child: Image.network(
                  "${AppConsts.baseUrl}/storage/${bank.logo!}",
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Text(
                      bank.code.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 8),
            ] else ...[
              SizedBox(
                width: bank.name.length > 15 ? 40 : 60,
                height: 20,
                child: Text(
                  bank.code.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
              ),
              const SizedBox(width: 8),
            ],
            Expanded(
              child: Text(
                bank.name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
