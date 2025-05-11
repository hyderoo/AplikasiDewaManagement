// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => _ReviewModel(
      id: (json['id'] as num).toInt(),
      userName: json['client_name'] as String,
      avatar: json['client_avatar'] as String?,
      rating: (json['rating'] as num).toDouble(),
      review: json['comment'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$ReviewModelToJson(_ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client_name': instance.userName,
      'client_avatar': instance.avatar,
      'rating': instance.rating,
      'comment': instance.review,
      'created_at': instance.createdAt,
    };
