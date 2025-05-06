import 'package:doctor_appoinment_ui/core/utils/const.dart';
import 'package:doctor_appoinment_ui/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class GetMedicalService extends StatelessWidget {
  const GetMedicalService({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppStyle.primarySwatch,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal! * 5,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get The Best\n Medical Services',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem Ipsum is simply dummy\ntext of the printing",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      fontSize: 13.0,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image.asset(AppStyle.image1),
        ],
      ),
    );
  }
}
