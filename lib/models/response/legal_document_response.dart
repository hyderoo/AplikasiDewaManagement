import 'package:dewa_wo_app/models/legal_document_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'legal_document_response.freezed.dart';
part 'legal_document_response.g.dart';

@freezed
abstract class LegalDocumentResponse with _$LegalDocumentResponse {
  const factory LegalDocumentResponse({
    required String status,
    required String message,
    LegalDocumentModel? data,
  }) = _LegalDocumentResponse;

  factory LegalDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$LegalDocumentResponseFromJson(json);
}
