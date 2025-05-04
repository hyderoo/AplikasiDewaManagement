import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:dewa_wo_app/resources/resources.dart';

void main() {
  test('app_animations assets test', () {
    expect(File(AppAnimations.notfound).existsSync(), isTrue);
  });
}
