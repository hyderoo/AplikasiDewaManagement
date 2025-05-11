// lib/cubits/payment_history/payment_history_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/core/repositories/payment_repository.dart';
import 'package:dewa_wo_app/core/models/order_model.dart';
import 'package:dewa_wo_app/core/models/payment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_history_state.dart';
part 'payment_history_cubit.freezed.dart';

@injectable
class PaymentHistoryCubit extends Cubit<PaymentHistoryState> {
  final PaymentRepository _paymentRepository;

  PaymentHistoryCubit({required PaymentRepository paymentRepository})
      : _paymentRepository = paymentRepository,
        super(const PaymentHistoryState.initial());

  Future<void> loadPaymentHistory(int orderId) async {
    emit(const PaymentHistoryState.loading());

    try {
      final response = await _paymentRepository.getPaymentHistory(orderId);

      if (response.status == 'success' && response.data != null) {
        // Extract order and payments
        final orderData = response.data['order'];
        final paymentsData = response.data['payments'] as List<PaymentModel>;

        // Convert order data to OrderModel
        final order = OrderModel.fromJson(orderData);

        emit(PaymentHistoryState.success(
          order: order,
          payments: paymentsData,
        ));
      } else {
        emit(PaymentHistoryState.error(
          message: response.message,
        ));
      }
    } catch (e) {
      emit(PaymentHistoryState.error(
        message: 'Terjadi kesalahan: ${e.toString()}',
      ));
    }
  }
}
