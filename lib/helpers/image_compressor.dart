import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class ImageCompressor {
  static const int maxFileSize = 2 * 1024 * 1024; // 2MB in bytes

  /// Compresses an image file to ensure it doesn't exceed 2MB
  /// Returns the compressed file, or the original if it's already small enough
  static Future<File> compressImageFile(File file) async {
    // Check if the file is already under the size limit
    final int originalSize = await file.length();
    if (kDebugMode) {
      print(
          'Original image size: ${(originalSize / 1024).toStringAsFixed(2)} KB');
    }

    if (originalSize <= maxFileSize) {
      return file; // No need to compress
    }

    // Get file extension
    final String ext = p.extension(file.path).toLowerCase();

    // Create temp directory for compressed file
    final Directory tempDir = await getTemporaryDirectory();
    final String targetPath =
        p.join(tempDir.path, '${DateTime.now().millisecondsSinceEpoch}$ext');

    // Calculate the quality based on file size
    // Larger files need more compression
    int quality = _calculateQuality(originalSize);

    // Compress the image with calculated quality
    File? result = await _compressAndGetFile(
      file,
      targetPath,
      quality: quality,
      originalSize: originalSize,
    );

    if (result != null) {
      final int compressedSize = await result.length();
      if (kDebugMode) {
        print(
            'Compressed image size: ${(compressedSize / 1024).toStringAsFixed(2)} KB');
        print(
            'Compression ratio: ${(compressedSize / originalSize * 100).toStringAsFixed(1)}%');
      }

      // If still too large, compress again with lower quality
      if (compressedSize > maxFileSize) {
        result = await _compressWithReduction(result, originalSize);
      }

      return result;
    }

    // If compression fails, return original file
    return file;
  }

  /// Calculate compression quality based on file size
  static int _calculateQuality(int fileSize) {
    // For files up to 5MB
    if (fileSize <= 5 * 1024 * 1024) {
      return 80; // 80% quality
    }
    // For files up to 10MB
    else if (fileSize <= 10 * 1024 * 1024) {
      return 60; // 60% quality
    }
    // For larger files
    else {
      return 40; // 40% quality
    }
  }

  /// Compress the image with specified quality
  static Future<File?> _compressAndGetFile(
    File file,
    String targetPath, {
    int quality = 80,
    int? originalSize,
  }) async {
    try {
      final result = await FlutterImageCompress.compressAndGetFile(
        file.absolute.path,
        targetPath,
        quality: quality,
        // Reduce dimensions for very large images
        minWidth: originalSize != null && originalSize > 10 * 1024 * 1024
            ? 1080
            : 1920,
        minHeight: originalSize != null && originalSize > 10 * 1024 * 1024
            ? 1080
            : 1920,
      );

      if (result != null) {
        return File(result.path);
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        print('Error compressing image: $e');
      }
      return null;
    }
  }

  /// Further compress if still too large after initial compression
  static Future<File> _compressWithReduction(
      File file, int originalSize) async {
    final String ext = p.extension(file.path).toLowerCase();
    final Directory tempDir = await getTemporaryDirectory();
    final String targetPath = p.join(
        tempDir.path, 'reduced_${DateTime.now().millisecondsSinceEpoch}$ext');

    // Try more aggressive compression
    final File? result = await _compressAndGetFile(
      file,
      targetPath,
      quality: 30, // Very low quality as a last resort
      originalSize: originalSize,
    );

    if (result != null) {
      final int finalSize = await result.length();
      if (kDebugMode) {
        print(
            'Final image size after reduction: ${(finalSize / 1024).toStringAsFixed(2)} KB');
      }
      return result;
    }

    // If all compression attempts fail, return the last compressed file
    return file;
  }
}
