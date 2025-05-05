import 'package:dewa_wo_app/models/portfolio_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_response.freezed.dart';
part 'portfolio_response.g.dart';

@freezed
abstract class PortfolioResponse with _$PortfolioResponse {
  const factory PortfolioResponse({
    required String status,
    required String message,
    List<PortfolioModel>? data,
  }) = _PortfolioResponse;

  factory PortfolioResponse.fromJson(Map<String, dynamic> json) =>
      _$PortfolioResponseFromJson(json);
}
