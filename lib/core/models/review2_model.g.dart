// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review2_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Review2Model _$Review2ModelFromJson(Map<String, dynamic> json) =>
    _Review2Model(
      id: (json['id'] as num).toInt(),
      orderId: (json['order_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$Review2ModelToJson(_Review2Model instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'user_id': instance.userId,
      'rating': instance.rating,
      'comment': instance.comment,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
