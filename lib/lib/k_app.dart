import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_flutter_toolkit/router/app_router.dart';

import '../router/routes.dart' show Routes;

class KApp extends StatelessWidget {
  const KApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // ToDo :App Main Size
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: AppRouter().generateRoute,
        title: 'K App',
        // theme: ThemeData(
        //   primaryColor: ColorsManger.mainBlue,
        //   scaffoldBackgroundColor: Colors.white,
        // ),
      ),
    );
  }
}
