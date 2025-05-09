// order_detail_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detail_model.freezed.dart';
part 'order_detail_model.g.dart';

@freezed
abstract class OrderDetailModel with _$OrderDetailModel {
  const factory OrderDetailModel({
    required int id,
    @JsonKey(name: 'order_id') required int orderId,
    @JsonKey(name: 'service_name') required String serviceName,
    String? description,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _OrderDetailModel;

  factory OrderDetailModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailModelFromJson(json);
}
