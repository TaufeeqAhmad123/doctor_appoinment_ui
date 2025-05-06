import 'package:animate_do/animate_do.dart';
import 'package:doctor_appoinment_ui/components/linerPainter.dart';
import 'package:doctor_appoinment_ui/core/data/data.dart';
import 'package:doctor_appoinment_ui/core/utils/const.dart';
import 'package:doctor_appoinment_ui/views/schedule/widget/calenderWidget.dart';
import 'package:doctor_appoinment_ui/views/schedule/widget/scheduleWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleScreen extends StatefulWidget {
  ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 70, right: 20),
            child: Row(
              children: [
                FadeInDown(
                  child: Text(
                    "Schedule",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          FadeInLeft(
            delay: const Duration(milliseconds: 500),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              child: ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 20.0 : 10,
                      right: index == data.length - 1 ? 20 : 0,
                    ),
                    child: GestureDetector(
                      onTap: () => setState(() {
                        value = index;
                      }),
                      child: calenderWidget(
                        value: value,
                        data: data,
                        index: index,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // Scheduled Appointment Widget.
          ScheduledWidget(),
        ],
      ),
    );
  }
}
