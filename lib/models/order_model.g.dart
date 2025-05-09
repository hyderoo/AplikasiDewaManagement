// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
      id: (json['id'] as num).toInt(),
      orderNumber: json['order_number'] as String,
      userId: (json['user_id'] as num).toInt(),
      catalogId: (json['catalog_id'] as num?)?.toInt(),
      clientName: json['client_name'] as String,
      eventDate: json['event_date'] as String,
      venue: json['venue'] as String,
      estimatedGuests: (json['estimated_guests'] as num).toInt(),
      originalPrice: (json['original_price'] as num).toDouble(),
      price: json['price'] as String,
      status: json['status'] as String,
      downPaymentAmount: json['down_payment_amount'] as String,
      paidAmount: json['paid_amount'] as String,
      isFullyPaid: json['is_fully_paid'] as bool,
      remainingAmount: (json['remaining_amount'] as num).toDouble(),
      discountPercent: (json['discount_percent'] as num?)?.toDouble(),
      discountAmount: json['discount_amount'] as String?,
      discountReason: json['discount_reason'] as String?,
      completedAt: json['completed_at'] as String?,
      cancelledAt: json['cancelled_at'] as String?,
      cancellationReason: json['cancellation_reason'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      formattedPrice: json['formatted_price'] as String,
      formattedDiscountAmount: json['formatted_discount_amount'] as String,
      formattedDiscountPercent: json['formatted_discount_percent'] as String,
      formattedDownPayment: json['formatted_down_payment'] as String,
      formattedPaidAmount: json['formatted_paid_amount'] as String,
      formattedRemainingAmount: json['formatted_remaining_amount'] as String,
      paymentPercentage: (json['payment_percentage'] as num).toInt(),
      hasReviewed: json['has_reviewed'] as bool,
      includedServices: (json['included_services'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      requiresDownPayment: json['requires_down_payment'] as bool,
      downPaymentAmountValue:
          (json['down_payment_amount_value'] as num).toDouble(),
      hasDiscount: json['has_discount'] as bool,
      formattedOriginalPrice: json['formatted_original_price'] as String,
      catalog: json['catalog'] == null
          ? null
          : CatalogModel.fromJson(json['catalog'] as Map<String, dynamic>),
      customFeatures: (json['custom_features'] as List<dynamic>?)
              ?.map(
                  (e) => CustomFeatureModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      review: json['review'] == null
          ? null
          : Review2Model.fromJson(json['review'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.orderNumber,
      'user_id': instance.userId,
      'catalog_id': instance.catalogId,
      'client_name': instance.clientName,
      'event_date': instance.eventDate,
      'venue': instance.venue,
      'estimated_guests': instance.estimatedGuests,
      'original_price': instance.originalPrice,
      'price': instance.price,
      'status': instance.status,
      'down_payment_amount': instance.downPaymentAmount,
      'paid_amount': instance.paidAmount,
      'is_fully_paid': instance.isFullyPaid,
      'remaining_amount': instance.remainingAmount,
      'discount_percent': instance.discountPercent,
      'discount_amount': instance.discountAmount,
      'discount_reason': instance.discountReason,
      'completed_at': instance.completedAt,
      'cancelled_at': instance.cancelledAt,
      'cancellation_reason': instance.cancellationReason,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'formatted_price': instance.formattedPrice,
      'formatted_discount_amount': instance.formattedDiscountAmount,
      'formatted_discount_percent': instance.formattedDiscountPercent,
      'formatted_down_payment': instance.formattedDownPayment,
      'formatted_paid_amount': instance.formattedPaidAmount,
      'formatted_remaining_amount': instance.formattedRemainingAmount,
      'payment_percentage': instance.paymentPercentage,
      'has_reviewed': instance.hasReviewed,
      'included_services': instance.includedServices,
      'requires_down_payment': instance.requiresDownPayment,
      'down_payment_amount_value': instance.downPaymentAmountValue,
      'has_discount': instance.hasDiscount,
      'formatted_original_price': instance.formattedOriginalPrice,
      'catalog': instance.catalog,
      'custom_features': instance.customFeatures,
      'review': instance.review,
    };
