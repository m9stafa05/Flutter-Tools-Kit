import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_flutter_toolkit/di/dependency_injection.dart';
import 'package:your_flutter_toolkit/lib/k_app.dart';
import 'package:your_flutter_toolkit/router/app_router.dart';

void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(KApp(appRouter: AppRouter()));
}
// flutter run --release --flavor production --target lib/main_production.dart