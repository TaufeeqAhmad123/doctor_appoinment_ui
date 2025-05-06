import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  // App Images ..
  static const String profile = "assets/images/profile.jpg";
  static const String image1 = "assets/images/doctor.png";

  /// App Icons.

  static const String filtterIcon = "assets/icons/adjust-horizontal-alt.svg";
  static const String searchIcon = "assets/icons/search.svg";
  static const String notifications = 'assets/images/notification.png';
  static const String heartBeat = 'assets/images/heartBeat.png';
  static const String blood = 'assets/icons/blood.png';
  static const String weight = 'assets/icons/weight.png';
  // Bottom Bar icons

  static const String homeIcon = "assets/icons/home.svg";
  static const String eventIcon = "assets/icons/event_note.svg";
  static const String reportIcon = "assets/icons/report.svg";
  static const String notificationsIcon = "assets/icons/notifications.svg";
  static const String calendar = "assets/icons/calendar.png";
  static const String chat = "assets/icons/chat.png";
  static const String heart1 = "assets/icons/heart1.png";
  static const String user = "assets/icons/user.png";
  static const String eye = "assets/icons/eye.png";
  static const String heart = "assets/icons/heart.png";
  static const String kidney = "assets/icons/kideny.png";
  static const String liver = "assets/icons/liver.png";
  static const String neural = "assets/icons/neural.png";

  // App Colors
  static const primarySwatch = Color(0xffB12854);
  static const color1 = Color(0xff97D0C4);
  static const color2 = Color(0xffD8887A);
  static const inputFillColor = Color(0xffEEF6FC);
  static const backgroundcolor = Color(0xffF7F6FB);
  //Dr images
  static const doctor1 = 'assets/images/d1.jpeg';
  static const doctor2 = 'assets/images/d2.jpeg';
  static const doctor3 = 'assets/images/d3.jpeg';
  static const doc1 = 'assets/images/doc1.jpg';
  static const doc2 = 'assets/images/doc2.jpg';
  static const doc3= 'assets/images/doc3.jpg';
  static const doctor= 'assets/images/doctor.png';
  // App Theme Data..

  static ThemeData? theme = ThemeData(
    textTheme: GoogleFonts.sarinaTextTheme().apply(
      bodyColor: const Color(0xff0E1012),
      displayColor: const Color(0xff0E1012),
    ),
  );
}
