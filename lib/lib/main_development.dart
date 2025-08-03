import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_flutter_toolkit/di/dependency_injection.dart';
import 'package:your_flutter_toolkit/lib/k_app.dart';
import 'package:your_flutter_toolkit/router/app_router.dart';

// ToDO! :
// Add To android/app/build.gradle.kts
/* 
flavorDimensions += "default"
productFlavors {
    create("development") {
        dimension = "default"
        resValue("string", "app_name", "DocDoc development")
        applicationIdSuffix = ".development"
    }

    create("production") {
        dimension = "default"
        resValue("string", "app_name", "DocDoc production")
        applicationIdSuffix = ".production"
    }
} 

TODO? :
And UPDATE android/app/src/main/AndroidManifest.xml

     android:label="@string/app_name"
*/
void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(KApp(appRouter: AppRouter()));
}

// flutter run --release --flavor development --target lib/main_development.dart
