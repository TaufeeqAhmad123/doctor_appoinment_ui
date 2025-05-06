import 'package:animate_do/animate_do.dart';
import 'package:doctor_appoinment_ui/core/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            FadeInDown(
              delay: const Duration(milliseconds: 300),
              child: Text(
                "Report",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700),
              ),
            ),

            SizedBox(height: 20),
            FlipInY(
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Heart Rate',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.5,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            '96 ',
                            style: Theme.of(context).textTheme.titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 35,
                                ),
                          ),
                          Text(
                            'bpm',
                            style: Theme.of(context).textTheme.titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                          ),
                          SizedBox(width: 20),
                          Image.asset(AppStyle.heartBeat, scale: 3.5),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BounceInLeft(
                  delay: const Duration(milliseconds: 300),
                  child: BodyMassWidget(
                    context,
                    Color.fromARGB(255, 253, 209, 214),
                    AppStyle.blood,
                    'Blood Group',
                    'A+',
                  ),
                ),
                BounceInRight(
                  delay: const Duration(milliseconds: 300),
                  child: BodyMassWidget(
                    context,
                    Color.fromARGB(255, 253, 235, 180),
                    AppStyle.weight,
                    'Weight',
                    '80 KG',
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            FadeInLeft(
              delay: const Duration(milliseconds: 300),
              child: Text(
                "Test Results",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 20),
            FadeInUp(
              delay: const Duration(milliseconds: 300),
              child: resultWidget('General Health', '8 Files'),
            ),
            SizedBox(height: 20),
            FadeInUp(
              delay: const Duration(milliseconds: 400),
              child: resultWidget('Test Reports', '3 Files'),
            ),
          ],
        ),
      ),
    );
  }

  Card resultWidget(final String title, final String subtitle) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 5,

      child: Container(
        padding: const EdgeInsets.all(12),
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              child: Center(
                child: SvgPicture.asset(
                  AppStyle.reportIcon,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }

  Container BodyMassWidget(
    BuildContext context,
    final Color color,
    final String image,
    final String title,
    final String mainText,
  ) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.pink[400],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(image, height: 30),
              const Icon(Icons.more_horiz),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          Text(
            mainText,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
        ],
      ),
    );
  }
}
