import 'package:doctor_appoinment_ui/core/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: AppStyle.backgroundcolor,
        title: Text(
          'DocPot',
          style: GoogleFonts.dmSans(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Center(
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          clipBehavior: Clip.none,
          alignment: Alignment.center, 
          children: [
           
            
             Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  color: AppStyle.primarySwatch,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
           
            Positioned.fill(
              top: 10,
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppStyle.doctor, ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
