import 'package:doctor_appoinment_ui/components/bottom_navbar.dart';
import 'package:doctor_appoinment_ui/core/utils/const.dart';
import 'package:doctor_appoinment_ui/views/home/home.dart';
import 'package:doctor_appoinment_ui/views/splash/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Appointment UI',
      debugShowCheckedModeBanner: false,
      theme: AppStyle.theme,

      home: const SplashScreen(),
    );
  }
}

