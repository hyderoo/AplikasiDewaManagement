// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => _ReviewModel(
      id: (json['id'] as num).toInt(),
      userName: json['user_name'] as String,
      rating: (json['rating'] as num).toDouble(),
      review: json['review'] as String,
      date: json['date'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$ReviewModelToJson(_ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_name': instance.userName,
      'rating': instance.rating,
      'review': instance.review,
      'date': instance.date,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
