import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:runway_app/views/homeview.dart';
import 'package:runway_app/views/splashview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          initialRoute: SplashView.routeName,
          routes: {
            SplashView.routeName: (context) => SplashView(),
            HomeView.routeName: (context) => HomeView(),
          },
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
