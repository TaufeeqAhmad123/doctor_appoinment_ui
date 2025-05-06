import 'package:doctor_appoinment_ui/core/data/data.dart';
import 'package:doctor_appoinment_ui/core/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class upcommingAppoinments extends StatelessWidget {
  const upcommingAppoinments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upcoming Appointments',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            letterSpacing: 1,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: upcomingAppointmentsList
                .map(
                  (e) => CupertinoButton(
                    onPressed: () {},
                    child: Container(
                      height: SizeConfig.blockSizeVertical! * 17,
                      width: SizeConfig.blockSizeHorizontal! * 80,
                      decoration: BoxDecoration(
                        color: e.color,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            width: 71.46,
                            height: 99.03,
                            decoration: const BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.all(
                                Radius.circular(26.0),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  e.date,
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text(
                                e.time,
                                style: Theme.of(context).textTheme.titleMedium!
                                    .copyWith(
                                      letterSpacing: 1,
                                      color: Colors.white,
                                    ),
                              ),
                              Text(
                                e.title,
                                style: Theme.of(context).textTheme.titleLarge!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      height: 1.8,
                                      letterSpacing: 1,
                                    ),
                              ),
                              Text(
                                e.subTitle,
                                style: Theme.of(context).textTheme.titleMedium!
                                    .copyWith(
                                      letterSpacing: 1,
                                      height: 1.8,
                                      color: Colors.white60,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}