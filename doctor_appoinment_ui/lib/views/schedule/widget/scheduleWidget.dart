import 'package:animate_do/animate_do.dart';
import 'package:doctor_appoinment_ui/components/linerPainter.dart';
import 'package:doctor_appoinment_ui/core/data/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduledWidget extends StatelessWidget {
  ScheduledWidget({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: doctorData.length,
          itemBuilder: (_, index) {
            var item = doctorData[index];
            return FadeInUp(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item['time'],
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        SizedBox(width: 20),
                         CustomPaint(
                    size: const Size(250, 0),
                    painter:Linerpainter(),
                  ),
                      ],
                    ),
                  ),
                 
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 20, top: 10),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: item['color']),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(item['dr-Img']),
                                        fit: BoxFit.cover)),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['bookedtime'],
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        color: index == 0
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    child: Text(
                                      item['dr-Name'],
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          color: index == 0
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 22),
                                    ),
                                  ),
                                  Text(
                                    item['typeofDoctor'],
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        color: index == 0
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Icon(
                                Icons.more_horiz,
                                color: index == 0 ? Colors.white : Colors.black,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
