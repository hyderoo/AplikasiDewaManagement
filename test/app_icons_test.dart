import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:dewa_wo_app/resources/resources.dart';

void main() {
  test('app_icons assets test', () {
    expect(File(AppIcons.checked).existsSync(), isTrue);
    expect(File(AppIcons.copy).existsSync(), isTrue);
    expect(File(AppIcons.date).existsSync(), isTrue);
    expect(File(AppIcons.dollar).existsSync(), isTrue);
    expect(File(AppIcons.location).existsSync(), isTrue);
    expect(File(AppIcons.logout).existsSync(), isTrue);
    expect(File(AppIcons.privacyPolicy).existsSync(), isTrue);
    expect(File(AppIcons.profile).existsSync(), isTrue);
    expect(File(AppIcons.review).existsSync(), isTrue);
    expect(File(AppIcons.settings).existsSync(), isTrue);
    expect(File(AppIcons.unchecked).existsSync(), isTrue);
    expect(File(AppIcons.users).existsSync(), isTrue);
  });
}
