import 'dart:ui';

import 'package:doctor_appoinment_ui/core/utils/const.dart';
import 'package:doctor_appoinment_ui/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class userInfo extends StatelessWidget {
  const userInfo({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '👋Hello!',
            style: GoogleFonts.nunitoSans(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
            ),
          ),
          Row(
            children: [
              Text(
                'Zohaib Khan',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(AppStyle.profile),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
