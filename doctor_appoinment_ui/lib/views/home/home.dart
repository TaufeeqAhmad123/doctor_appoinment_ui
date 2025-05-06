import 'package:animate_do/animate_do.dart';
import 'package:doctor_appoinment_ui/core/data/data.dart';
import 'package:doctor_appoinment_ui/core/utils/const.dart';
import 'package:doctor_appoinment_ui/core/utils/size_config.dart';
import 'package:doctor_appoinment_ui/views/home/widgets/getMedicalServices.dart';
import 'package:doctor_appoinment_ui/views/home/widgets/searchField.dart';
import 'package:doctor_appoinment_ui/views/home/widgets/upcoming_appionment.dart';
import 'package:doctor_appoinment_ui/views/home/widgets/userInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal! * 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInLeft(child: userInfo()),
                FlipInY(
                  duration: const Duration(milliseconds: 500),
                  delay: const Duration(milliseconds: 1000),

                  child: searchFoeld(context),
                ),
                FadeInDown(child: Sevices()),
                SizedBox(height: 15),
                FadeInRight(
                  delay: const Duration(milliseconds: 1000),
                  child: GetMedicalService(),
                ),
                SizedBox(height: 35),
                FadeInUp(
                  delay: const Duration(milliseconds: 1000),
                  child: upcommingAppoinments(),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Sevices extends StatelessWidget {
  const Sevices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Services',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            letterSpacing: 1,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: servicesList
              .map(
                (e) => CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: Container(
                    height: SizeConfig.blockSizeVertical! * 12,
                    width: SizeConfig.blockSizeHorizontal! * 17,
                    decoration: BoxDecoration(
                      color: e.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SvgPicture.asset(e.image),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
