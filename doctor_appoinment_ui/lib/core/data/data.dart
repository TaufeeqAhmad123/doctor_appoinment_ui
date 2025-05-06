import 'package:doctor_appoinment_ui/core/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Services {
  final String image;
  final Color color;
  Services({
    required this.image,
    required this.color,
  });
}

// Services List OF DATA

List<Services> servicesList = [
  Services(
    image: 'assets/icons/doctor-Icon.svg',
    color: const Color(0xffDCEDF9),
  ),
  Services(
    image: 'assets/icons/noun-pill.svg',
    color: const Color(0xffFAF0DB),
  ),
  Services(
    image: 'assets/icons/noun-medical-test.svg',
    color: const Color(0xffD6F6FF),
  ),
  Services(
    image: 'assets/icons/noun-corona.svg',
    color: const Color(0xffF2E3E9),
  ),
];

/// Upcoming Appointments

class Appointments {
  final String date;
  final String time;
  final String title;
  final String subTitle;
  final Color color;

  Appointments({
    required this.color,
    required this.date,
    required this.time,
    required this.title,
    required this.subTitle,
  });
}

// Upcoming Appointments List OF DATA

List<Appointments> upcomingAppointmentsList = [
  Appointments(
    date: "12\nTue",
    time: DateFormat('hh:mm a').format(DateTime.now()),
    title: "Dr. Mim Akhter",
    subTitle: "Depression",
    color: const Color(0xff1C6BA4),
  ),
  Appointments(
    date: "12\nTue",
    time: DateFormat('hh:mm a').format(DateTime.now()),
    title: "Dr. Mim Akhter",
    subTitle: "Depression",
    color: const Color(0xff1C6BA4),
  ),
];


List<Map<String, dynamic>> data = [
    {'date': '12', 'day': 'Mon'},
    {'date': '13', 'day': 'Tue'},
    {'date': '18', 'day': 'Wed'},
    {'date': '14', 'day': 'Thu'},
    {'date': '15', 'day': 'Fri'},
    {'date': '16', 'day': 'Sat'},
    {'date': '17', 'day': 'Sun'},
  ];
  List<Map<String, dynamic>> doctorData = [
    {
      'time': '12:00 PM',
      'bookedtime': '12:30 PM',
      'dr-Name': 'Dr. Fateha',
      'typeofDoctor': 'Cardiologist',
      'dr-Img': AppStyle.doctor1,
      'color': Colors.blue[900],
    },
    {
      'time': '1:00 PM',
      'bookedtime': '1:30 PM',
      'dr-Name': 'Dr. John',
      'typeofDoctor': 'Cardiologist',
      'dr-Img': AppStyle.doctor2,
      'color': Colors.red[200],
    },
    {
      'time': '4:00 PM',
      'bookedtime': '4:30 PM',
      'dr-Name': 'Dr. Ali',
      'typeofDoctor': 'Cardiologist',
      'dr-Img': AppStyle.doctor3,
      'color': Colors.amber[200],
    },
  ];