import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/core/models/response/features_response.dart';
import 'package:dewa_wo_app/core/repositories/order_repository.dart';
import 'package:dewa_wo_app/core/models/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'custom_order_form_state.dart';
part 'custom_order_form_cubit.freezed.dart';

@injectable
class CustomOrderFormCubit extends Cubit<CustomOrderFormState> {
  final OrderRepository _orderRepository;

  CustomOrderFormCubit({required OrderRepository orderRepository})
      : _orderRepository = orderRepository,
        super(const CustomOrderFormState.initial());

  Future<void> createCustomOrder({
    required List<FeatureModel> selectedFeatures,
    required String namaPria,
    required String namaWanita,
    required DateTime tanggal,
    required int jumlahTamu,
    required String lokasi,
    required String alamat,
    required String email,
    required String whatsapp,
    required String? teleponAlternatif,
    required double totalPrice,
  }) async {
    emit(const CustomOrderFormState.loading());

    try {
      // Combine names for clientName
      final clientName = '$namaPria & $namaWanita';

      // Format date to string format expected by API
      final eventDate = tanggal.toIso8601String();

      // Get feature IDs for the order
      final customFeatures = selectedFeatures.map((f) => f.id).toList();

      // Prepare order data according to Laravel backend requirements
      final orderData = {
        'client_name': clientName,
        'event_date': eventDate,
        'venue': '$lokasi - $alamat',
        'estimated_guests': jumlahTamu,
        'custom_features': customFeatures,
        'email': email,
        'phone': whatsapp,
        'alt_phone': teleponAlternatif,
        'price': totalPrice,
        'original_price': totalPrice,
      };

      final response = await _orderRepository.createCustomOrder(orderData);

      if (response.status == 'success' && response.data != null) {
        final order = response.data as OrderModel;
        emit(CustomOrderFormState.success(
          order: order,
          message: response.message,
        ));
      } else {
        emit(CustomOrderFormState.error(
          message: response.message,
        ));
      }
    } catch (e) {
      emit(CustomOrderFormState.error(
        message: 'Terjadi kesalahan: ${e.toString()}',
      ));
    }
  }

  void resetState() {
    emit(const CustomOrderFormState.initial());
  }
}
