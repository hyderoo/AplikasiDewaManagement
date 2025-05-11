// detail_pesanan_page.dart
import 'package:dewa_wo_app/cubits/order/order_cubit.dart';
import 'package:dewa_wo_app/cubits/order_detail/order_detail_cubit.dart';
import 'package:dewa_wo_app/models/order_model.dart';
import 'package:dewa_wo_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class DetailPesananPage extends StatefulWidget {
  final int id;

  const DetailPesananPage({
    super.key,
    required this.id,
  });

  @override
  State<DetailPesananPage> createState() => _DetailPesananPageState();
}

class _DetailPesananPageState extends State<DetailPesananPage> {
  late final OrderDetailCubit _orderDetailCubit;

  @override
  void initState() {
    super.initState();
    _orderDetailCubit = context.read<OrderDetailCubit>();
    _orderDetailCubit.getOrderDetail(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Detail Pesanan'),
        centerTitle: true,
        actions: [
          BlocBuilder<OrderDetailCubit, OrderDetailState>(
            bloc: _orderDetailCubit,
            builder: (context, state) {
              if (state is OrderDetailSuccess) {
                return PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  onSelected: (value) {
                    if (value == 'cancel' &&
                        state.order.status == 'pending_payment') {
                      _showCancelDialog();
                    } else if (value == 'complete' &&
                        state.order.status == 'ongoing') {
                      _showCompleteDialog();
                    }
                  },
                  itemBuilder: (context) => [
                    if (state.order.status == 'pending_payment')
                      const PopupMenuItem(
                        value: 'cancel',
                        child: Text('Batalkan Pesanan'),
                      ),
                    if (state.order.status == 'ongoing')
                      const PopupMenuItem(
                        value: 'complete',
                        child: Text('Selesaikan Pesanan'),
                      ),
                  ],
                );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
      body: BlocConsumer<OrderDetailCubit, OrderDetailState>(
        bloc: _orderDetailCubit,
        listener: (context, state) {
          if (state is OrderDetailError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is OrderDetailLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is OrderDetailSuccess) {
            return RefreshIndicator(
              onRefresh: () => _orderDetailCubit.refreshOrderDetail(widget.id),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Card(
                        child: Column(
                          children: [
                            _buildHeader(state.order),
                            _buildDetailInfo(state.order),
                            _buildLayananTermasuk(state.order),
                            if (state.order.paymentPercentage > 0)
                              _buildPaymentProgress(state.order),
                          ],
                        ),
                      ),
                    ),
                    if (state.order.status == 'pending_payment' &&
                        state.order.requiresDownPayment)
                      _buildPaymentButton(state.order),
                  ],
                ),
              ),
            );
          } else if (state is OrderDetailError) {
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
                    onPressed: () =>
                        _orderDetailCubit.getOrderDetail(widget.id),
                    child: const Text('Coba Lagi'),
                  ),
                ],
              ),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget _buildHeader(OrderModel order) {
    final orderCubit = context.read<OrderCubit>();
    final statusColor = orderCubit.getStatusColor(order.status);
    final statusDisplay = orderCubit.getStatusDisplayName(order.status);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      order.clientName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Order #${order.orderNumber}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  statusDisplay,
                  style: TextStyle(
                    color: statusColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            order.catalog?.name ?? 'Custom Package',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailInfo(OrderModel order) {
    final eventDate = DateTime.parse(order.eventDate);
    final formattedDate = DateFormat('dd MMMM yyyy', 'id_ID').format(eventDate);

    return Container(
      padding: const EdgeInsets.all(16).copyWith(top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoRow(
            icon: AppIcons.date,
            label: 'Tanggal Acara',
            value: formattedDate,
          ),
          const SizedBox(height: 12),
          _buildInfoRow(
            icon: AppIcons.dollar,
            label: 'Total Harga',
            value: order.formattedPrice,
          ),
          if (order.hasDiscount) ...[
            const SizedBox(height: 8),
            _buildInfoRow(
              icon: AppIcons.checked,
              label: 'Diskon',
              value: order.formattedDiscountAmount,
              valueColor: Colors.green,
            ),
          ],
          const SizedBox(height: 12),
          _buildInfoRow(
            icon: AppIcons.location,
            label: 'Lokasi',
            value: order.venue,
          ),
          const SizedBox(height: 12),
          _buildInfoRow(
            icon: AppIcons.users,
            label: 'Estimasi Tamu',
            value: '${order.estimatedGuests} orang',
          ),
          const SizedBox(height: 12),
          _buildInfoRow(
            icon: AppIcons.dollar,
            label: 'Sudah Dibayar',
            value: order.formattedPaidAmount,
            valueColor: Colors.green,
          ),
          const SizedBox(height: 12),
          _buildInfoRow(
            icon: AppIcons.dollar,
            label: 'Sisa Pembayaran',
            value: order.formattedRemainingAmount,
            valueColor:
                order.remainingAmount > 0 ? Colors.orange : Colors.green,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow({
    required String icon,
    required String label,
    required String value,
    Color? valueColor,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          icon,
          height: 20,
          color: Colors.grey[600],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: TextStyle(
                  fontSize: 15,
                  color: valueColor ?? Colors.grey[800],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLayananTermasuk(OrderModel order) {
    final services = order.includedServices.isNotEmpty
        ? order.includedServices
        : order.catalog?.features ?? [];

    if (services.isEmpty) return const SizedBox();

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Layanan Termasuk',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          ...services.map((layanan) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 20,
                      color: Colors.green[600],
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        layanan,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildPaymentProgress(OrderModel order) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Progress Pembayaran',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${order.paymentPercentage}%',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: order.paymentPercentage == 100
                      ? Colors.green
                      : Colors.orange,
                ),
              ),
              Text(
                order.formattedPaidAmount,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: order.paymentPercentage / 100,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(
              order.paymentPercentage == 100 ? Colors.green : Colors.orange,
            ),
            minHeight: 8,
          ),
          if (order.remainingAmount > 0) ...[
            const SizedBox(height: 8),
            Text(
              'Sisa: ${order.formattedRemainingAmount}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildPaymentButton(OrderModel order) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {
          context.push('/pesanan/payment/order/${order.id}');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.payment, color: Colors.white),
            SizedBox(width: 8),
            Text(
              'Bayar Sekarang',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCancelDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Batalkan Pesanan'),
        content: const Text('Apakah Anda yakin ingin membatalkan pesanan ini?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tidak'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _orderDetailCubit.cancelOrder(widget.id);
            },
            child: const Text(
              'Ya, Batalkan',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  void _showCompleteDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Selesaikan Pesanan'),
        content:
            const Text('Apakah Anda yakin ingin menyelesaikan pesanan ini?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tidak'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _orderDetailCubit.completeOrder(widget.id);
            },
            child: const Text(
              'Ya, Selesaikan',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
