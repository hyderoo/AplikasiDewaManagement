import 'package:dewa_wo_app/core/di/dependency_injection.dart';
import 'package:dewa_wo_app/core/models/portfolio_model.dart';
import 'package:dewa_wo_app/core/models/response/features_response.dart';
import 'package:dewa_wo_app/cubits/custom_features/custom_features_cubit.dart';
import 'package:dewa_wo_app/pages/auth/cubit/auth_cubit.dart';
import 'package:dewa_wo_app/cubits/availability/availability_cubit.dart';
import 'package:dewa_wo_app/pages/layanan/custom_features_page.dart';
import 'package:dewa_wo_app/pages/pesanan/form/custom/cubit/custom_order_form_cubit.dart';
import 'package:dewa_wo_app/pages/pesanan/form/custom/custom_order_form_page.dart';
import 'package:dewa_wo_app/pages/pesanan/list/cubit/order_cubit.dart';
import 'package:dewa_wo_app/pages/pesanan/detail/cubit/order_detail_cubit.dart';
import 'package:dewa_wo_app/pages/pesanan/form/cubit/order_form_cubit.dart';
import 'package:dewa_wo_app/pages/pesanan/pembayaran/detail/cubit/payment_detail_cubit.dart';
import 'package:dewa_wo_app/pages/pesanan/pembayaran/history/cubit/payment_history_cubit.dart';
import 'package:dewa_wo_app/pages/pesanan/pembayaran/method/cubit/payment_method_cubit.dart';
import 'package:dewa_wo_app/pages/portfolio/cubit/portfolio_cubit.dart';
import 'package:dewa_wo_app/pages/akun/cubit/profile_cubit.dart';
import 'package:dewa_wo_app/cubits/review/review_cubit.dart';
import 'package:dewa_wo_app/pages/layanan/cubit/service_cubit.dart';
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
import 'package:dewa_wo_app/pages/pesanan/pembayaran/detail/payment_detail_page.dart';
import 'package:dewa_wo_app/pages/pesanan/pembayaran/history/payment_history_page.dart';
import 'package:dewa_wo_app/pages/pesanan/pembayaran/method/payment_method_page.dart';
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
