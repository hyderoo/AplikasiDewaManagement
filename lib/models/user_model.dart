import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
@HiveType(typeId: 1)
abstract class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    @HiveField(1) @JsonKey(name: 'name') required String fullName,
    @HiveField(2) required String email,
    @HiveField(3) required String phone,
    @HiveField(4) required String role,
    @HiveField(5) @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    @HiveField(6) @JsonKey(name: 'created_at') required String createdAt,
    @HiveField(7) @JsonKey(name: 'updated_at') required String updatedAt,
    @HiveField(8) @JsonKey(name: 'deleted_at') String? deletedAt,
    @HiveField(9) required String? avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
