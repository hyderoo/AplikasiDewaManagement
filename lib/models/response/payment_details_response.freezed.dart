// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentDetailsResponse {
  String get status;
  String get message;
  PaymentDetailsData? get data;

  /// Create a copy of PaymentDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentDetailsResponseCopyWith<PaymentDetailsResponse> get copyWith =>
      _$PaymentDetailsResponseCopyWithImpl<PaymentDetailsResponse>(
          this as PaymentDetailsResponse, _$identity);

  /// Serializes this PaymentDetailsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentDetailsResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @override
  String toString() {
    return 'PaymentDetailsResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $PaymentDetailsResponseCopyWith<$Res> {
  factory $PaymentDetailsResponseCopyWith(PaymentDetailsResponse value,
          $Res Function(PaymentDetailsResponse) _then) =
      _$PaymentDetailsResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, PaymentDetailsData? data});

  $PaymentDetailsDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PaymentDetailsResponseCopyWithImpl<$Res>
    implements $PaymentDetailsResponseCopyWith<$Res> {
  _$PaymentDetailsResponseCopyWithImpl(this._self, this._then);

  final PaymentDetailsResponse _self;
  final $Res Function(PaymentDetailsResponse) _then;

  /// Create a copy of PaymentDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentDetailsData?,
    ));
  }

  /// Create a copy of PaymentDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentDetailsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $PaymentDetailsDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PaymentDetailsResponse implements PaymentDetailsResponse {
  const _PaymentDetailsResponse(
      {required this.status, required this.message, this.data});
  factory _PaymentDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  @override
  final PaymentDetailsData? data;

  /// Create a copy of PaymentDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentDetailsResponseCopyWith<_PaymentDetailsResponse> get copyWith =>
      __$PaymentDetailsResponseCopyWithImpl<_PaymentDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentDetailsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentDetailsResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @override
  String toString() {
    return 'PaymentDetailsResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$PaymentDetailsResponseCopyWith<$Res>
    implements $PaymentDetailsResponseCopyWith<$Res> {
  factory _$PaymentDetailsResponseCopyWith(_PaymentDetailsResponse value,
          $Res Function(_PaymentDetailsResponse) _then) =
      __$PaymentDetailsResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, PaymentDetailsData? data});

  @override
  $PaymentDetailsDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$PaymentDetailsResponseCopyWithImpl<$Res>
    implements _$PaymentDetailsResponseCopyWith<$Res> {
  __$PaymentDetailsResponseCopyWithImpl(this._self, this._then);

  final _PaymentDetailsResponse _self;
  final $Res Function(_PaymentDetailsResponse) _then;

  /// Create a copy of PaymentDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_PaymentDetailsResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentDetailsData?,
    ));
  }

  /// Create a copy of PaymentDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentDetailsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $PaymentDetailsDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$PaymentDetailsData {
  OrderModel get order;
  List<BankModel> get banks;
  @JsonKey(name: 'virtual_accounts')
  List<VirtualAccountModel> get virtualAccounts;

  /// Create a copy of PaymentDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentDetailsDataCopyWith<PaymentDetailsData> get copyWith =>
      _$PaymentDetailsDataCopyWithImpl<PaymentDetailsData>(
          this as PaymentDetailsData, _$identity);

  /// Serializes this PaymentDetailsData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentDetailsData &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other.banks, banks) &&
            const DeepCollectionEquality()
                .equals(other.virtualAccounts, virtualAccounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      order,
      const DeepCollectionEquality().hash(banks),
      const DeepCollectionEquality().hash(virtualAccounts));

  @override
  String toString() {
    return 'PaymentDetailsData(order: $order, banks: $banks, virtualAccounts: $virtualAccounts)';
  }
}

/// @nodoc
abstract mixin class $PaymentDetailsDataCopyWith<$Res> {
  factory $PaymentDetailsDataCopyWith(
          PaymentDetailsData value, $Res Function(PaymentDetailsData) _then) =
      _$PaymentDetailsDataCopyWithImpl;
  @useResult
  $Res call(
      {OrderModel order,
      List<BankModel> banks,
      @JsonKey(name: 'virtual_accounts')
      List<VirtualAccountModel> virtualAccounts});

  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class _$PaymentDetailsDataCopyWithImpl<$Res>
    implements $PaymentDetailsDataCopyWith<$Res> {
  _$PaymentDetailsDataCopyWithImpl(this._self, this._then);

  final PaymentDetailsData _self;
  final $Res Function(PaymentDetailsData) _then;

  /// Create a copy of PaymentDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? banks = null,
    Object? virtualAccounts = null,
  }) {
    return _then(_self.copyWith(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
      banks: null == banks
          ? _self.banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<BankModel>,
      virtualAccounts: null == virtualAccounts
          ? _self.virtualAccounts
          : virtualAccounts // ignore: cast_nullable_to_non_nullable
              as List<VirtualAccountModel>,
    ));
  }

  /// Create a copy of PaymentDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get order {
    return $OrderModelCopyWith<$Res>(_self.order, (value) {
      return _then(_self.copyWith(order: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PaymentDetailsData implements PaymentDetailsData {
  const _PaymentDetailsData(
      {required this.order,
      required final List<BankModel> banks,
      @JsonKey(name: 'virtual_accounts')
      required final List<VirtualAccountModel> virtualAccounts})
      : _banks = banks,
        _virtualAccounts = virtualAccounts;
  factory _PaymentDetailsData.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsDataFromJson(json);

  @override
  final OrderModel order;
  final List<BankModel> _banks;
  @override
  List<BankModel> get banks {
    if (_banks is EqualUnmodifiableListView) return _banks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banks);
  }

  final List<VirtualAccountModel> _virtualAccounts;
  @override
  @JsonKey(name: 'virtual_accounts')
  List<VirtualAccountModel> get virtualAccounts {
    if (_virtualAccounts is EqualUnmodifiableListView) return _virtualAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_virtualAccounts);
  }

  /// Create a copy of PaymentDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentDetailsDataCopyWith<_PaymentDetailsData> get copyWith =>
      __$PaymentDetailsDataCopyWithImpl<_PaymentDetailsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentDetailsDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentDetailsData &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._banks, _banks) &&
            const DeepCollectionEquality()
                .equals(other._virtualAccounts, _virtualAccounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      order,
      const DeepCollectionEquality().hash(_banks),
      const DeepCollectionEquality().hash(_virtualAccounts));

  @override
  String toString() {
    return 'PaymentDetailsData(order: $order, banks: $banks, virtualAccounts: $virtualAccounts)';
  }
}

/// @nodoc
abstract mixin class _$PaymentDetailsDataCopyWith<$Res>
    implements $PaymentDetailsDataCopyWith<$Res> {
  factory _$PaymentDetailsDataCopyWith(
          _PaymentDetailsData value, $Res Function(_PaymentDetailsData) _then) =
      __$PaymentDetailsDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {OrderModel order,
      List<BankModel> banks,
      @JsonKey(name: 'virtual_accounts')
      List<VirtualAccountModel> virtualAccounts});

  @override
  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class __$PaymentDetailsDataCopyWithImpl<$Res>
    implements _$PaymentDetailsDataCopyWith<$Res> {
  __$PaymentDetailsDataCopyWithImpl(this._self, this._then);

  final _PaymentDetailsData _self;
  final $Res Function(_PaymentDetailsData) _then;

  /// Create a copy of PaymentDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? banks = null,
    Object? virtualAccounts = null,
  }) {
    return _then(_PaymentDetailsData(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
      banks: null == banks
          ? _self._banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<BankModel>,
      virtualAccounts: null == virtualAccounts
          ? _self._virtualAccounts
          : virtualAccounts // ignore: cast_nullable_to_non_nullable
              as List<VirtualAccountModel>,
    ));
  }

  /// Create a copy of PaymentDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get order {
    return $OrderModelCopyWith<$Res>(_self.order, (value) {
      return _then(_self.copyWith(order: value));
    });
  }
}

// dart format on
