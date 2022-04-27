// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tentative_job/main_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context) {
        return MaterialApp(
          
          debugShowCheckedModeBanner: false,
          home: MainPage(),
          useInheritedMediaQuery: true,
        );
      },
      designSize: const Size(375, 812),
    );
  }
}
