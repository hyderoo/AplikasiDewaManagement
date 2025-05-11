import 'package:dewa_wo_app/core/api/api_client.dart';
import 'package:dewa_wo_app/core/models/response/legal_document_response.dart';
import 'package:dewa_wo_app/core/models/response/portfolio_response.dart';
import 'package:dewa_wo_app/core/models/response/review_response.dart';
import 'package:dewa_wo_app/core/models/response/tim_response.dart';
import 'package:dewa_wo_app/core/models/response/catalog_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ContentRepository {
  final ApiClient _apiClient;

  ContentRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  // Portfolio Methods
  Future<PortfolioResponse> getPortfolios() async {
    try {
      final response = await _apiClient.get('/portfolios');
      return PortfolioResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return PortfolioResponse.fromJson(e.response!.data);
        } catch (_) {
          return PortfolioResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch portfolios',
            data: null,
          );
        }
      }
      return PortfolioResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return PortfolioResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Tim Methods
  Future<TimResponse> getTim() async {
    try {
      final response = await _apiClient.get('/team');
      return TimResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return TimResponse.fromJson(e.response!.data);
        } catch (_) {
          return TimResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch team members',
            data: null,
          );
        }
      }
      return TimResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return TimResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Catalog Methods
  Future<CatalogResponse> getCatalogs() async {
    try {
      final response = await _apiClient.get('/catalogs');
      return CatalogResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return CatalogResponse.fromJson(e.response!.data);
        } catch (_) {
          return CatalogResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch catalogs',
            data: null,
          );
        }
      }
      return CatalogResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return CatalogResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

// Legal Document Methods
  Future<LegalDocumentResponse> getTermsAndConditions() async {
    try {
      final response = await _apiClient.get('/terms-conditions');
      return LegalDocumentResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return LegalDocumentResponse.fromJson(e.response!.data);
        } catch (_) {
          return LegalDocumentResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch terms and conditions',
            data: null,
          );
        }
      }
      return LegalDocumentResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return LegalDocumentResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  Future<LegalDocumentResponse> getPrivacyPolicy() async {
    try {
      final response = await _apiClient.get('/privacy-policy');
      return LegalDocumentResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return LegalDocumentResponse.fromJson(e.response!.data);
        } catch (_) {
          return LegalDocumentResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch privacy policy',
            data: null,
          );
        }
      }
      return LegalDocumentResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return LegalDocumentResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Review Methods
  Future<ReviewResponse> getReviews() async {
    try {
      final response = await _apiClient.get('/reviews');
      return ReviewResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return ReviewResponse.fromJson(e.response!.data);
        } catch (_) {
          return ReviewResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch reviews',
            data: null,
          );
        }
      }
      return ReviewResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return ReviewResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }
}
