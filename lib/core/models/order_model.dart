// order_model.dart
import 'package:dewa_wo_app/core/models/catalog_model.dart';
import 'package:dewa_wo_app/core/models/custom_feature_model.dart';
import 'package:dewa_wo_app/core/models/review2_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
abstract class OrderModel with _$OrderModel {
  const factory OrderModel({
    required int id,
    @JsonKey(name: 'order_number') required String orderNumber,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'catalog_id') int? catalogId,
    @JsonKey(name: 'client_name') required String clientName,
    @JsonKey(name: 'event_date') required String eventDate,
    required String venue,
    @JsonKey(name: 'estimated_guests') required int estimatedGuests,
    @JsonKey(name: 'original_price') required double originalPrice,
    required String price,
    required String status,
    @JsonKey(name: 'down_payment_amount') required String downPaymentAmount,
    @JsonKey(name: 'paid_amount') required String paidAmount,
    @JsonKey(name: 'is_fully_paid') required bool isFullyPaid,
    @JsonKey(name: 'remaining_amount') required double remainingAmount,
    @JsonKey(name: 'discount_percent') double? discountPercent,
    @JsonKey(name: 'discount_amount') String? discountAmount,
    @JsonKey(name: 'discount_reason') String? discountReason,
    @JsonKey(name: 'completed_at') String? completedAt,
    @JsonKey(name: 'cancelled_at') String? cancelledAt,
    @JsonKey(name: 'cancellation_reason') String? cancellationReason,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'formatted_price') required String formattedPrice,
    @JsonKey(name: 'formatted_discount_amount')
    required String formattedDiscountAmount,
    @JsonKey(name: 'formatted_discount_percent')
    required String formattedDiscountPercent,
    @JsonKey(name: 'formatted_down_payment')
    required String formattedDownPayment,
    @JsonKey(name: 'formatted_paid_amount') required String formattedPaidAmount,
    @JsonKey(name: 'formatted_remaining_amount')
    required String formattedRemainingAmount,
    @JsonKey(name: 'payment_percentage') required int paymentPercentage,
    @JsonKey(name: 'has_reviewed') required bool hasReviewed,
    @JsonKey(name: 'included_services') required List<String> includedServices,
    @JsonKey(name: 'requires_down_payment') required bool requiresDownPayment,
    @JsonKey(name: 'down_payment_amount_value')
    required double downPaymentAmountValue,
    @JsonKey(name: 'has_discount') required bool hasDiscount,
    @JsonKey(name: 'formatted_original_price')
    required String formattedOriginalPrice,
    CatalogModel? catalog,
    @JsonKey(name: 'custom_features')
    @Default([])
    List<CustomFeatureModel> customFeatures,
    Review2Model? review,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
