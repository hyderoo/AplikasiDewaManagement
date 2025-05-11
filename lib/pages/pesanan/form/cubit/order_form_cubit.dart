// order_form_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/core/repositories/order_repository.dart';
import 'package:dewa_wo_app/core/models/catalog_model.dart';
import 'package:dewa_wo_app/core/models/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_form_state.dart';
part 'order_form_cubit.freezed.dart';

@injectable
class OrderFormCubit extends Cubit<OrderFormState> {
  final OrderRepository _orderRepository;

  OrderFormCubit({required OrderRepository orderRepository})
      : _orderRepository = orderRepository,
        super(const OrderFormState.initial());

  Future<void> createOrder({
    required CatalogModel catalog,
    required String namaPria,
    required String namaWanita,
    required DateTime tanggal,
    required int jumlahTamu,
    required String lokasi,
    required String alamat,
    required double price,
    required String email,
    required String whatsapp,
    String? teleponAlternatif,
    double? originalPrice,
  }) async {
    emit(const OrderFormState.loading());

    try {
      // Combine names for clientName
      final clientName = '$namaPria & $namaWanita';

      // Format date to string format expected by API
      final eventDate = tanggal.toIso8601String();

      // Prepare order data
      final orderData = {
        'catalog_id': catalog.id,
        'client_name': clientName,
        'event_date': eventDate,
        'venue': '$lokasi - $alamat',
        'estimated_guests': jumlahTamu,
        'price': price,
        'original_price': originalPrice ?? price,
        'email': email,
        'phone': whatsapp,
        'alt_phone': teleponAlternatif,
      };

      final response = await _orderRepository.createOrder(orderData);

      if (response.status == 'success' && response.data != null) {
        final order = response.data as OrderModel;
        emit(OrderFormState.success(
          order: order,
          message: response.message,
        ));
      } else {
        emit(OrderFormState.error(
          message: response.message,
        ));
      }
    } catch (e) {
      emit(OrderFormState.error(
        message: 'Terjadi kesalahan: ${e.toString()}',
      ));
    }
  }

  void resetState() {
    emit(const OrderFormState.initial());
  }
}
