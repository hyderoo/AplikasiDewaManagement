import 'package:freezed_annotation/freezed_annotation.dart';

part 'legal_document_model.freezed.dart';
part 'legal_document_model.g.dart';

@freezed
abstract class LegalDocumentModel with _$LegalDocumentModel {
  const factory LegalDocumentModel({
    required int id,
    required String type,
    required String content,
    required String version,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _LegalDocumentModel;

  factory LegalDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$LegalDocumentModelFromJson(json);
}
