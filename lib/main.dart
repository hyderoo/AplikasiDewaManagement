import 'package:dewa_wo_app/core/di/dependency_injection.dart';
import 'package:dewa_wo_app/core/models/portfolio_model.dart';
import 'package:dewa_wo_app/pages/auth/cubit/auth_cubit.dart';
import 'package:dewa_wo_app/cubits/availability/availability_cubit.dart';
import 'package:dewa_wo_app/cubits/order/order_cubit.dart';
import 'package:dewa_wo_app/cubits/order_detail/order_detail_cubit.dart';
import 'package:dewa_wo_app/cubits/order_form/order_form_cubit.dart';
import 'package:dewa_wo_app/cubits/payment_detail/payment_detail_cubit.dart';
import 'package:dewa_wo_app/cubits/payment_history/payment_history_cubit.dart';
import 'package:dewa_wo_app/cubits/payment_method/payment_method_cubit.dart';
import 'package:dewa_wo_app/pages/portfolio/cubit/portfolio_cubit.dart';
import 'package:dewa_wo_app/cubits/profile/profile_cubit.dart';
import 'package:dewa_wo_app/cubits/review/review_cubit.dart';
import 'package:dewa_wo_app/cubits/service/service_cubit.dart';
import 'package:dewa_wo_app/pages/portfolio/portfolio_detail_page.dart';
import 'package:dewa_wo_app/pages/tim/cubit/tim_cubit.dart';
import 'package:dewa_wo_app/core/models/catalog_model.dart';
import 'package:dewa_wo_app/pages/akun/pengaturan_akun_page.dart';
import 'package:dewa_wo_app/pages/akun/pengaturan_profile_page.dart';
import 'package:dewa_wo_app/pages/auth/forgot/forgot_password_page.dart';
import 'package:dewa_wo_app/pages/auth/login/login_page.dart';
import 'package:dewa_wo_app/pages/auth/register/register_page.dart';
import 'package:dewa_wo_app/pages/home/home_page.dart';
import 'package:dewa_wo_app/pages/layanan/layanan_page.dart';
import 'package:dewa_wo_app/pages/legal/privacy_policy_page.dart';
import 'package:dewa_wo_app/pages/legal/terms_conditions_page.dart';
import 'package:dewa_wo_app/pages/not_found/not_found_page.dart';
import 'package:dewa_wo_app/pages/pesanan/detail/detail_pesanan_page.dart';
import 'package:dewa_wo_app/pages/pesanan/form/form_pemesanan_page.dart';
import 'package:dewa_wo_app/pages/pesanan/list/pesanan_page.dart';
import 'package:dewa_wo_app/pages/pesanan/pembayaran/detail_pembayaran_page.dart';
import 'package:dewa_wo_app/pages/pesanan/pembayaran/payment_history_page.dart';
import 'package:dewa_wo_app/pages/pesanan/pembayaran/payment_method_page.dart';
import 'package:dewa_wo_app/pages/portfolio/portfolio_page.dart';
import 'package:dewa_wo_app/pages/splash/splash_page.dart';
import 'package:dewa_wo_app/pages/tim/tim_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';

part 'router.dart';
part 'my_app.dart';
part 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id', null);
  await initDependencies();

  runApp(const MyApp());
}
