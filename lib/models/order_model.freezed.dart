// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderModel {
  int get id;
  @JsonKey(name: 'order_number')
  String get orderNumber;
  @JsonKey(name: 'user_id')
  int get userId;
  @JsonKey(name: 'catalog_id')
  int? get catalogId;
  @JsonKey(name: 'client_name')
  String get clientName;
  @JsonKey(name: 'event_date')
  String get eventDate;
  String get venue;
  @JsonKey(name: 'estimated_guests')
  int get estimatedGuests;
  @JsonKey(name: 'original_price')
  double get originalPrice;
  String get price;
  String get status;
  @JsonKey(name: 'down_payment_amount')
  String get downPaymentAmount;
  @JsonKey(name: 'paid_amount')
  String get paidAmount;
  @JsonKey(name: 'is_fully_paid')
  bool get isFullyPaid;
  @JsonKey(name: 'remaining_amount')
  double get remainingAmount;
  @JsonKey(name: 'discount_percent')
  double? get discountPercent;
  @JsonKey(name: 'discount_amount')
  String? get discountAmount;
  @JsonKey(name: 'discount_reason')
  String? get discountReason;
  @JsonKey(name: 'completed_at')
  String? get completedAt;
  @JsonKey(name: 'cancelled_at')
  String? get cancelledAt;
  @JsonKey(name: 'cancellation_reason')
  String? get cancellationReason;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @JsonKey(name: 'formatted_price')
  String get formattedPrice;
  @JsonKey(name: 'formatted_discount_amount')
  String get formattedDiscountAmount;
  @JsonKey(name: 'formatted_discount_percent')
  String get formattedDiscountPercent;
  @JsonKey(name: 'formatted_down_payment')
  String get formattedDownPayment;
  @JsonKey(name: 'formatted_paid_amount')
  String get formattedPaidAmount;
  @JsonKey(name: 'formatted_remaining_amount')
  String get formattedRemainingAmount;
  @JsonKey(name: 'payment_percentage')
  int get paymentPercentage;
  @JsonKey(name: 'has_reviewed')
  bool get hasReviewed;
  @JsonKey(name: 'included_services')
  List<String> get includedServices;
  @JsonKey(name: 'requires_down_payment')
  bool get requiresDownPayment;
  @JsonKey(name: 'down_payment_amount_value')
  double get downPaymentAmountValue;
  @JsonKey(name: 'has_discount')
  bool get hasDiscount;
  @JsonKey(name: 'formatted_original_price')
  String get formattedOriginalPrice;
  CatalogModel? get catalog;
  @JsonKey(name: 'custom_features')
  List<CustomFeatureModel> get customFeatures;
  Review2Model? get review;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<OrderModel> get copyWith =>
      _$OrderModelCopyWithImpl<OrderModel>(this as OrderModel, _$identity);

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.catalogId, catalogId) ||
                other.catalogId == catalogId) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.venue, venue) || other.venue == venue) &&
            (identical(other.estimatedGuests, estimatedGuests) ||
                other.estimatedGuests == estimatedGuests) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.downPaymentAmount, downPaymentAmount) ||
                other.downPaymentAmount == downPaymentAmount) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.isFullyPaid, isFullyPaid) ||
                other.isFullyPaid == isFullyPaid) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount) &&
            (identical(other.discountPercent, discountPercent) ||
                other.discountPercent == discountPercent) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discountReason, discountReason) ||
                other.discountReason == discountReason) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.formattedPrice, formattedPrice) ||
                other.formattedPrice == formattedPrice) &&
            (identical(other.formattedDiscountAmount, formattedDiscountAmount) ||
                other.formattedDiscountAmount == formattedDiscountAmount) &&
            (identical(
                    other.formattedDiscountPercent, formattedDiscountPercent) ||
                other.formattedDiscountPercent == formattedDiscountPercent) &&
            (identical(other.formattedDownPayment, formattedDownPayment) ||
                other.formattedDownPayment == formattedDownPayment) &&
            (identical(other.formattedPaidAmount, formattedPaidAmount) ||
                other.formattedPaidAmount == formattedPaidAmount) &&
            (identical(
                    other.formattedRemainingAmount, formattedRemainingAmount) ||
                other.formattedRemainingAmount == formattedRemainingAmount) &&
            (identical(other.paymentPercentage, paymentPercentage) ||
                other.paymentPercentage == paymentPercentage) &&
            (identical(other.hasReviewed, hasReviewed) ||
                other.hasReviewed == hasReviewed) &&
            const DeepCollectionEquality()
                .equals(other.includedServices, includedServices) &&
            (identical(other.requiresDownPayment, requiresDownPayment) ||
                other.requiresDownPayment == requiresDownPayment) &&
            (identical(other.downPaymentAmountValue, downPaymentAmountValue) ||
                other.downPaymentAmountValue == downPaymentAmountValue) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            (identical(other.formattedOriginalPrice, formattedOriginalPrice) ||
                other.formattedOriginalPrice == formattedOriginalPrice) &&
            (identical(other.catalog, catalog) || other.catalog == catalog) &&
            const DeepCollectionEquality()
                .equals(other.customFeatures, customFeatures) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        orderNumber,
        userId,
        catalogId,
        clientName,
        eventDate,
        venue,
        estimatedGuests,
        originalPrice,
        price,
        status,
        downPaymentAmount,
        paidAmount,
        isFullyPaid,
        remainingAmount,
        discountPercent,
        discountAmount,
        discountReason,
        completedAt,
        cancelledAt,
        cancellationReason,
        createdAt,
        updatedAt,
        formattedPrice,
        formattedDiscountAmount,
        formattedDiscountPercent,
        formattedDownPayment,
        formattedPaidAmount,
        formattedRemainingAmount,
        paymentPercentage,
        hasReviewed,
        const DeepCollectionEquality().hash(includedServices),
        requiresDownPayment,
        downPaymentAmountValue,
        hasDiscount,
        formattedOriginalPrice,
        catalog,
        const DeepCollectionEquality().hash(customFeatures),
        review
      ]);

  @override
  String toString() {
    return 'OrderModel(id: $id, orderNumber: $orderNumber, userId: $userId, catalogId: $catalogId, clientName: $clientName, eventDate: $eventDate, venue: $venue, estimatedGuests: $estimatedGuests, originalPrice: $originalPrice, price: $price, status: $status, downPaymentAmount: $downPaymentAmount, paidAmount: $paidAmount, isFullyPaid: $isFullyPaid, remainingAmount: $remainingAmount, discountPercent: $discountPercent, discountAmount: $discountAmount, discountReason: $discountReason, completedAt: $completedAt, cancelledAt: $cancelledAt, cancellationReason: $cancellationReason, createdAt: $createdAt, updatedAt: $updatedAt, formattedPrice: $formattedPrice, formattedDiscountAmount: $formattedDiscountAmount, formattedDiscountPercent: $formattedDiscountPercent, formattedDownPayment: $formattedDownPayment, formattedPaidAmount: $formattedPaidAmount, formattedRemainingAmount: $formattedRemainingAmount, paymentPercentage: $paymentPercentage, hasReviewed: $hasReviewed, includedServices: $includedServices, requiresDownPayment: $requiresDownPayment, downPaymentAmountValue: $downPaymentAmountValue, hasDiscount: $hasDiscount, formattedOriginalPrice: $formattedOriginalPrice, catalog: $catalog, customFeatures: $customFeatures, review: $review)';
  }
}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) _then) =
      _$OrderModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'order_number') String orderNumber,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'catalog_id') int? catalogId,
      @JsonKey(name: 'client_name') String clientName,
      @JsonKey(name: 'event_date') String eventDate,
      String venue,
      @JsonKey(name: 'estimated_guests') int estimatedGuests,
      @JsonKey(name: 'original_price') double originalPrice,
      String price,
      String status,
      @JsonKey(name: 'down_payment_amount') String downPaymentAmount,
      @JsonKey(name: 'paid_amount') String paidAmount,
      @JsonKey(name: 'is_fully_paid') bool isFullyPaid,
      @JsonKey(name: 'remaining_amount') double remainingAmount,
      @JsonKey(name: 'discount_percent') double? discountPercent,
      @JsonKey(name: 'discount_amount') String? discountAmount,
      @JsonKey(name: 'discount_reason') String? discountReason,
      @JsonKey(name: 'completed_at') String? completedAt,
      @JsonKey(name: 'cancelled_at') String? cancelledAt,
      @JsonKey(name: 'cancellation_reason') String? cancellationReason,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'formatted_price') String formattedPrice,
      @JsonKey(name: 'formatted_discount_amount')
      String formattedDiscountAmount,
      @JsonKey(name: 'formatted_discount_percent')
      String formattedDiscountPercent,
      @JsonKey(name: 'formatted_down_payment') String formattedDownPayment,
      @JsonKey(name: 'formatted_paid_amount') String formattedPaidAmount,
      @JsonKey(name: 'formatted_remaining_amount')
      String formattedRemainingAmount,
      @JsonKey(name: 'payment_percentage') int paymentPercentage,
      @JsonKey(name: 'has_reviewed') bool hasReviewed,
      @JsonKey(name: 'included_services') List<String> includedServices,
      @JsonKey(name: 'requires_down_payment') bool requiresDownPayment,
      @JsonKey(name: 'down_payment_amount_value') double downPaymentAmountValue,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      @JsonKey(name: 'formatted_original_price') String formattedOriginalPrice,
      CatalogModel? catalog,
      @JsonKey(name: 'custom_features') List<CustomFeatureModel> customFeatures,
      Review2Model? review});

  $CatalogModelCopyWith<$Res>? get catalog;
  $Review2ModelCopyWith<$Res>? get review;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res> implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._self, this._then);

  final OrderModel _self;
  final $Res Function(OrderModel) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? userId = null,
    Object? catalogId = freezed,
    Object? clientName = null,
    Object? eventDate = null,
    Object? venue = null,
    Object? estimatedGuests = null,
    Object? originalPrice = null,
    Object? price = null,
    Object? status = null,
    Object? downPaymentAmount = null,
    Object? paidAmount = null,
    Object? isFullyPaid = null,
    Object? remainingAmount = null,
    Object? discountPercent = freezed,
    Object? discountAmount = freezed,
    Object? discountReason = freezed,
    Object? completedAt = freezed,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? formattedPrice = null,
    Object? formattedDiscountAmount = null,
    Object? formattedDiscountPercent = null,
    Object? formattedDownPayment = null,
    Object? formattedPaidAmount = null,
    Object? formattedRemainingAmount = null,
    Object? paymentPercentage = null,
    Object? hasReviewed = null,
    Object? includedServices = null,
    Object? requiresDownPayment = null,
    Object? downPaymentAmountValue = null,
    Object? hasDiscount = null,
    Object? formattedOriginalPrice = null,
    Object? catalog = freezed,
    Object? customFeatures = null,
    Object? review = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      catalogId: freezed == catalogId
          ? _self.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as int?,
      clientName: null == clientName
          ? _self.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _self.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as String,
      venue: null == venue
          ? _self.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedGuests: null == estimatedGuests
          ? _self.estimatedGuests
          : estimatedGuests // ignore: cast_nullable_to_non_nullable
              as int,
      originalPrice: null == originalPrice
          ? _self.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      downPaymentAmount: null == downPaymentAmount
          ? _self.downPaymentAmount
          : downPaymentAmount // ignore: cast_nullable_to_non_nullable
              as String,
      paidAmount: null == paidAmount
          ? _self.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as String,
      isFullyPaid: null == isFullyPaid
          ? _self.isFullyPaid
          : isFullyPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      remainingAmount: null == remainingAmount
          ? _self.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercent: freezed == discountPercent
          ? _self.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      discountReason: freezed == discountReason
          ? _self.discountReason
          : discountReason // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationReason: freezed == cancellationReason
          ? _self.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      formattedPrice: null == formattedPrice
          ? _self.formattedPrice
          : formattedPrice // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDiscountAmount: null == formattedDiscountAmount
          ? _self.formattedDiscountAmount
          : formattedDiscountAmount // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDiscountPercent: null == formattedDiscountPercent
          ? _self.formattedDiscountPercent
          : formattedDiscountPercent // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDownPayment: null == formattedDownPayment
          ? _self.formattedDownPayment
          : formattedDownPayment // ignore: cast_nullable_to_non_nullable
              as String,
      formattedPaidAmount: null == formattedPaidAmount
          ? _self.formattedPaidAmount
          : formattedPaidAmount // ignore: cast_nullable_to_non_nullable
              as String,
      formattedRemainingAmount: null == formattedRemainingAmount
          ? _self.formattedRemainingAmount
          : formattedRemainingAmount // ignore: cast_nullable_to_non_nullable
              as String,
      paymentPercentage: null == paymentPercentage
          ? _self.paymentPercentage
          : paymentPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      hasReviewed: null == hasReviewed
          ? _self.hasReviewed
          : hasReviewed // ignore: cast_nullable_to_non_nullable
              as bool,
      includedServices: null == includedServices
          ? _self.includedServices
          : includedServices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      requiresDownPayment: null == requiresDownPayment
          ? _self.requiresDownPayment
          : requiresDownPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      downPaymentAmountValue: null == downPaymentAmountValue
          ? _self.downPaymentAmountValue
          : downPaymentAmountValue // ignore: cast_nullable_to_non_nullable
              as double,
      hasDiscount: null == hasDiscount
          ? _self.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      formattedOriginalPrice: null == formattedOriginalPrice
          ? _self.formattedOriginalPrice
          : formattedOriginalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      catalog: freezed == catalog
          ? _self.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as CatalogModel?,
      customFeatures: null == customFeatures
          ? _self.customFeatures
          : customFeatures // ignore: cast_nullable_to_non_nullable
              as List<CustomFeatureModel>,
      review: freezed == review
          ? _self.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review2Model?,
    ));
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogModelCopyWith<$Res>? get catalog {
    if (_self.catalog == null) {
      return null;
    }

    return $CatalogModelCopyWith<$Res>(_self.catalog!, (value) {
      return _then(_self.copyWith(catalog: value));
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Review2ModelCopyWith<$Res>? get review {
    if (_self.review == null) {
      return null;
    }

    return $Review2ModelCopyWith<$Res>(_self.review!, (value) {
      return _then(_self.copyWith(review: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _OrderModel implements OrderModel {
  const _OrderModel(
      {required this.id,
      @JsonKey(name: 'order_number') required this.orderNumber,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'catalog_id') this.catalogId,
      @JsonKey(name: 'client_name') required this.clientName,
      @JsonKey(name: 'event_date') required this.eventDate,
      required this.venue,
      @JsonKey(name: 'estimated_guests') required this.estimatedGuests,
      @JsonKey(name: 'original_price') required this.originalPrice,
      required this.price,
      required this.status,
      @JsonKey(name: 'down_payment_amount') required this.downPaymentAmount,
      @JsonKey(name: 'paid_amount') required this.paidAmount,
      @JsonKey(name: 'is_fully_paid') required this.isFullyPaid,
      @JsonKey(name: 'remaining_amount') required this.remainingAmount,
      @JsonKey(name: 'discount_percent') this.discountPercent,
      @JsonKey(name: 'discount_amount') this.discountAmount,
      @JsonKey(name: 'discount_reason') this.discountReason,
      @JsonKey(name: 'completed_at') this.completedAt,
      @JsonKey(name: 'cancelled_at') this.cancelledAt,
      @JsonKey(name: 'cancellation_reason') this.cancellationReason,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'formatted_price') required this.formattedPrice,
      @JsonKey(name: 'formatted_discount_amount')
      required this.formattedDiscountAmount,
      @JsonKey(name: 'formatted_discount_percent')
      required this.formattedDiscountPercent,
      @JsonKey(name: 'formatted_down_payment')
      required this.formattedDownPayment,
      @JsonKey(name: 'formatted_paid_amount') required this.formattedPaidAmount,
      @JsonKey(name: 'formatted_remaining_amount')
      required this.formattedRemainingAmount,
      @JsonKey(name: 'payment_percentage') required this.paymentPercentage,
      @JsonKey(name: 'has_reviewed') required this.hasReviewed,
      @JsonKey(name: 'included_services')
      required final List<String> includedServices,
      @JsonKey(name: 'requires_down_payment') required this.requiresDownPayment,
      @JsonKey(name: 'down_payment_amount_value')
      required this.downPaymentAmountValue,
      @JsonKey(name: 'has_discount') required this.hasDiscount,
      @JsonKey(name: 'formatted_original_price')
      required this.formattedOriginalPrice,
      this.catalog,
      @JsonKey(name: 'custom_features')
      final List<CustomFeatureModel> customFeatures = const [],
      this.review})
      : _includedServices = includedServices,
        _customFeatures = customFeatures;
  factory _OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'order_number')
  final String orderNumber;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'catalog_id')
  final int? catalogId;
  @override
  @JsonKey(name: 'client_name')
  final String clientName;
  @override
  @JsonKey(name: 'event_date')
  final String eventDate;
  @override
  final String venue;
  @override
  @JsonKey(name: 'estimated_guests')
  final int estimatedGuests;
  @override
  @JsonKey(name: 'original_price')
  final double originalPrice;
  @override
  final String price;
  @override
  final String status;
  @override
  @JsonKey(name: 'down_payment_amount')
  final String downPaymentAmount;
  @override
  @JsonKey(name: 'paid_amount')
  final String paidAmount;
  @override
  @JsonKey(name: 'is_fully_paid')
  final bool isFullyPaid;
  @override
  @JsonKey(name: 'remaining_amount')
  final double remainingAmount;
  @override
  @JsonKey(name: 'discount_percent')
  final double? discountPercent;
  @override
  @JsonKey(name: 'discount_amount')
  final String? discountAmount;
  @override
  @JsonKey(name: 'discount_reason')
  final String? discountReason;
  @override
  @JsonKey(name: 'completed_at')
  final String? completedAt;
  @override
  @JsonKey(name: 'cancelled_at')
  final String? cancelledAt;
  @override
  @JsonKey(name: 'cancellation_reason')
  final String? cancellationReason;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'formatted_price')
  final String formattedPrice;
  @override
  @JsonKey(name: 'formatted_discount_amount')
  final String formattedDiscountAmount;
  @override
  @JsonKey(name: 'formatted_discount_percent')
  final String formattedDiscountPercent;
  @override
  @JsonKey(name: 'formatted_down_payment')
  final String formattedDownPayment;
  @override
  @JsonKey(name: 'formatted_paid_amount')
  final String formattedPaidAmount;
  @override
  @JsonKey(name: 'formatted_remaining_amount')
  final String formattedRemainingAmount;
  @override
  @JsonKey(name: 'payment_percentage')
  final int paymentPercentage;
  @override
  @JsonKey(name: 'has_reviewed')
  final bool hasReviewed;
  final List<String> _includedServices;
  @override
  @JsonKey(name: 'included_services')
  List<String> get includedServices {
    if (_includedServices is EqualUnmodifiableListView)
      return _includedServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_includedServices);
  }

  @override
  @JsonKey(name: 'requires_down_payment')
  final bool requiresDownPayment;
  @override
  @JsonKey(name: 'down_payment_amount_value')
  final double downPaymentAmountValue;
  @override
  @JsonKey(name: 'has_discount')
  final bool hasDiscount;
  @override
  @JsonKey(name: 'formatted_original_price')
  final String formattedOriginalPrice;
  @override
  final CatalogModel? catalog;
  final List<CustomFeatureModel> _customFeatures;
  @override
  @JsonKey(name: 'custom_features')
  List<CustomFeatureModel> get customFeatures {
    if (_customFeatures is EqualUnmodifiableListView) return _customFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customFeatures);
  }

  @override
  final Review2Model? review;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderModelCopyWith<_OrderModel> get copyWith =>
      __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.catalogId, catalogId) ||
                other.catalogId == catalogId) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.venue, venue) || other.venue == venue) &&
            (identical(other.estimatedGuests, estimatedGuests) ||
                other.estimatedGuests == estimatedGuests) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.downPaymentAmount, downPaymentAmount) ||
                other.downPaymentAmount == downPaymentAmount) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.isFullyPaid, isFullyPaid) ||
                other.isFullyPaid == isFullyPaid) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount) &&
            (identical(other.discountPercent, discountPercent) ||
                other.discountPercent == discountPercent) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discountReason, discountReason) ||
                other.discountReason == discountReason) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.formattedPrice, formattedPrice) ||
                other.formattedPrice == formattedPrice) &&
            (identical(other.formattedDiscountAmount, formattedDiscountAmount) ||
                other.formattedDiscountAmount == formattedDiscountAmount) &&
            (identical(
                    other.formattedDiscountPercent, formattedDiscountPercent) ||
                other.formattedDiscountPercent == formattedDiscountPercent) &&
            (identical(other.formattedDownPayment, formattedDownPayment) ||
                other.formattedDownPayment == formattedDownPayment) &&
            (identical(other.formattedPaidAmount, formattedPaidAmount) ||
                other.formattedPaidAmount == formattedPaidAmount) &&
            (identical(
                    other.formattedRemainingAmount, formattedRemainingAmount) ||
                other.formattedRemainingAmount == formattedRemainingAmount) &&
            (identical(other.paymentPercentage, paymentPercentage) ||
                other.paymentPercentage == paymentPercentage) &&
            (identical(other.hasReviewed, hasReviewed) ||
                other.hasReviewed == hasReviewed) &&
            const DeepCollectionEquality()
                .equals(other._includedServices, _includedServices) &&
            (identical(other.requiresDownPayment, requiresDownPayment) ||
                other.requiresDownPayment == requiresDownPayment) &&
            (identical(other.downPaymentAmountValue, downPaymentAmountValue) ||
                other.downPaymentAmountValue == downPaymentAmountValue) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            (identical(other.formattedOriginalPrice, formattedOriginalPrice) ||
                other.formattedOriginalPrice == formattedOriginalPrice) &&
            (identical(other.catalog, catalog) || other.catalog == catalog) &&
            const DeepCollectionEquality()
                .equals(other._customFeatures, _customFeatures) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        orderNumber,
        userId,
        catalogId,
        clientName,
        eventDate,
        venue,
        estimatedGuests,
        originalPrice,
        price,
        status,
        downPaymentAmount,
        paidAmount,
        isFullyPaid,
        remainingAmount,
        discountPercent,
        discountAmount,
        discountReason,
        completedAt,
        cancelledAt,
        cancellationReason,
        createdAt,
        updatedAt,
        formattedPrice,
        formattedDiscountAmount,
        formattedDiscountPercent,
        formattedDownPayment,
        formattedPaidAmount,
        formattedRemainingAmount,
        paymentPercentage,
        hasReviewed,
        const DeepCollectionEquality().hash(_includedServices),
        requiresDownPayment,
        downPaymentAmountValue,
        hasDiscount,
        formattedOriginalPrice,
        catalog,
        const DeepCollectionEquality().hash(_customFeatures),
        review
      ]);

  @override
  String toString() {
    return 'OrderModel(id: $id, orderNumber: $orderNumber, userId: $userId, catalogId: $catalogId, clientName: $clientName, eventDate: $eventDate, venue: $venue, estimatedGuests: $estimatedGuests, originalPrice: $originalPrice, price: $price, status: $status, downPaymentAmount: $downPaymentAmount, paidAmount: $paidAmount, isFullyPaid: $isFullyPaid, remainingAmount: $remainingAmount, discountPercent: $discountPercent, discountAmount: $discountAmount, discountReason: $discountReason, completedAt: $completedAt, cancelledAt: $cancelledAt, cancellationReason: $cancellationReason, createdAt: $createdAt, updatedAt: $updatedAt, formattedPrice: $formattedPrice, formattedDiscountAmount: $formattedDiscountAmount, formattedDiscountPercent: $formattedDiscountPercent, formattedDownPayment: $formattedDownPayment, formattedPaidAmount: $formattedPaidAmount, formattedRemainingAmount: $formattedRemainingAmount, paymentPercentage: $paymentPercentage, hasReviewed: $hasReviewed, includedServices: $includedServices, requiresDownPayment: $requiresDownPayment, downPaymentAmountValue: $downPaymentAmountValue, hasDiscount: $hasDiscount, formattedOriginalPrice: $formattedOriginalPrice, catalog: $catalog, customFeatures: $customFeatures, review: $review)';
  }
}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(
          _OrderModel value, $Res Function(_OrderModel) _then) =
      __$OrderModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'order_number') String orderNumber,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'catalog_id') int? catalogId,
      @JsonKey(name: 'client_name') String clientName,
      @JsonKey(name: 'event_date') String eventDate,
      String venue,
      @JsonKey(name: 'estimated_guests') int estimatedGuests,
      @JsonKey(name: 'original_price') double originalPrice,
      String price,
      String status,
      @JsonKey(name: 'down_payment_amount') String downPaymentAmount,
      @JsonKey(name: 'paid_amount') String paidAmount,
      @JsonKey(name: 'is_fully_paid') bool isFullyPaid,
      @JsonKey(name: 'remaining_amount') double remainingAmount,
      @JsonKey(name: 'discount_percent') double? discountPercent,
      @JsonKey(name: 'discount_amount') String? discountAmount,
      @JsonKey(name: 'discount_reason') String? discountReason,
      @JsonKey(name: 'completed_at') String? completedAt,
      @JsonKey(name: 'cancelled_at') String? cancelledAt,
      @JsonKey(name: 'cancellation_reason') String? cancellationReason,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'formatted_price') String formattedPrice,
      @JsonKey(name: 'formatted_discount_amount')
      String formattedDiscountAmount,
      @JsonKey(name: 'formatted_discount_percent')
      String formattedDiscountPercent,
      @JsonKey(name: 'formatted_down_payment') String formattedDownPayment,
      @JsonKey(name: 'formatted_paid_amount') String formattedPaidAmount,
      @JsonKey(name: 'formatted_remaining_amount')
      String formattedRemainingAmount,
      @JsonKey(name: 'payment_percentage') int paymentPercentage,
      @JsonKey(name: 'has_reviewed') bool hasReviewed,
      @JsonKey(name: 'included_services') List<String> includedServices,
      @JsonKey(name: 'requires_down_payment') bool requiresDownPayment,
      @JsonKey(name: 'down_payment_amount_value') double downPaymentAmountValue,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      @JsonKey(name: 'formatted_original_price') String formattedOriginalPrice,
      CatalogModel? catalog,
      @JsonKey(name: 'custom_features') List<CustomFeatureModel> customFeatures,
      Review2Model? review});

  @override
  $CatalogModelCopyWith<$Res>? get catalog;
  @override
  $Review2ModelCopyWith<$Res>? get review;
}

/// @nodoc
class __$OrderModelCopyWithImpl<$Res> implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(this._self, this._then);

  final _OrderModel _self;
  final $Res Function(_OrderModel) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? userId = null,
    Object? catalogId = freezed,
    Object? clientName = null,
    Object? eventDate = null,
    Object? venue = null,
    Object? estimatedGuests = null,
    Object? originalPrice = null,
    Object? price = null,
    Object? status = null,
    Object? downPaymentAmount = null,
    Object? paidAmount = null,
    Object? isFullyPaid = null,
    Object? remainingAmount = null,
    Object? discountPercent = freezed,
    Object? discountAmount = freezed,
    Object? discountReason = freezed,
    Object? completedAt = freezed,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? formattedPrice = null,
    Object? formattedDiscountAmount = null,
    Object? formattedDiscountPercent = null,
    Object? formattedDownPayment = null,
    Object? formattedPaidAmount = null,
    Object? formattedRemainingAmount = null,
    Object? paymentPercentage = null,
    Object? hasReviewed = null,
    Object? includedServices = null,
    Object? requiresDownPayment = null,
    Object? downPaymentAmountValue = null,
    Object? hasDiscount = null,
    Object? formattedOriginalPrice = null,
    Object? catalog = freezed,
    Object? customFeatures = null,
    Object? review = freezed,
  }) {
    return _then(_OrderModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      catalogId: freezed == catalogId
          ? _self.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as int?,
      clientName: null == clientName
          ? _self.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _self.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as String,
      venue: null == venue
          ? _self.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedGuests: null == estimatedGuests
          ? _self.estimatedGuests
          : estimatedGuests // ignore: cast_nullable_to_non_nullable
              as int,
      originalPrice: null == originalPrice
          ? _self.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      downPaymentAmount: null == downPaymentAmount
          ? _self.downPaymentAmount
          : downPaymentAmount // ignore: cast_nullable_to_non_nullable
              as String,
      paidAmount: null == paidAmount
          ? _self.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as String,
      isFullyPaid: null == isFullyPaid
          ? _self.isFullyPaid
          : isFullyPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      remainingAmount: null == remainingAmount
          ? _self.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercent: freezed == discountPercent
          ? _self.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      discountReason: freezed == discountReason
          ? _self.discountReason
          : discountReason // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationReason: freezed == cancellationReason
          ? _self.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      formattedPrice: null == formattedPrice
          ? _self.formattedPrice
          : formattedPrice // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDiscountAmount: null == formattedDiscountAmount
          ? _self.formattedDiscountAmount
          : formattedDiscountAmount // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDiscountPercent: null == formattedDiscountPercent
          ? _self.formattedDiscountPercent
          : formattedDiscountPercent // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDownPayment: null == formattedDownPayment
          ? _self.formattedDownPayment
          : formattedDownPayment // ignore: cast_nullable_to_non_nullable
              as String,
      formattedPaidAmount: null == formattedPaidAmount
          ? _self.formattedPaidAmount
          : formattedPaidAmount // ignore: cast_nullable_to_non_nullable
              as String,
      formattedRemainingAmount: null == formattedRemainingAmount
          ? _self.formattedRemainingAmount
          : formattedRemainingAmount // ignore: cast_nullable_to_non_nullable
              as String,
      paymentPercentage: null == paymentPercentage
          ? _self.paymentPercentage
          : paymentPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      hasReviewed: null == hasReviewed
          ? _self.hasReviewed
          : hasReviewed // ignore: cast_nullable_to_non_nullable
              as bool,
      includedServices: null == includedServices
          ? _self._includedServices
          : includedServices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      requiresDownPayment: null == requiresDownPayment
          ? _self.requiresDownPayment
          : requiresDownPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      downPaymentAmountValue: null == downPaymentAmountValue
          ? _self.downPaymentAmountValue
          : downPaymentAmountValue // ignore: cast_nullable_to_non_nullable
              as double,
      hasDiscount: null == hasDiscount
          ? _self.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      formattedOriginalPrice: null == formattedOriginalPrice
          ? _self.formattedOriginalPrice
          : formattedOriginalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      catalog: freezed == catalog
          ? _self.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as CatalogModel?,
      customFeatures: null == customFeatures
          ? _self._customFeatures
          : customFeatures // ignore: cast_nullable_to_non_nullable
              as List<CustomFeatureModel>,
      review: freezed == review
          ? _self.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review2Model?,
    ));
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogModelCopyWith<$Res>? get catalog {
    if (_self.catalog == null) {
      return null;
    }

    return $CatalogModelCopyWith<$Res>(_self.catalog!, (value) {
      return _then(_self.copyWith(catalog: value));
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Review2ModelCopyWith<$Res>? get review {
    if (_self.review == null) {
      return null;
    }

    return $Review2ModelCopyWith<$Res>(_self.review!, (value) {
      return _then(_self.copyWith(review: value));
    });
  }
}

// dart format on
