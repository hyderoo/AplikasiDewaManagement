import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:dewa_wo_app/resources/resources.dart';

void main() {
  test('app_menu assets test', () {
    expect(File(AppMenu.layanan).existsSync(), isTrue);
    expect(File(AppMenu.pesanan).existsSync(), isTrue);
    expect(File(AppMenu.portofolio).existsSync(), isTrue);
    expect(File(AppMenu.tim).existsSync(), isTrue);
  });
}
