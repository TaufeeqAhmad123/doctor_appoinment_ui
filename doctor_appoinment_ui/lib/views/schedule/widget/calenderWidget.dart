import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class calenderWidget extends StatelessWidget {
  const calenderWidget({
    super.key,
    required this.value,
    required this.data, required this.index,

  });

  final int value;
  final int index;
  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: value == index
            ? Colors.blue[900]
            : Colors.blue[100],
      ),
    
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
    
        children: [
          Text(
            data[index]['date'],
            style: Theme.of(context).textTheme.titleLarge!
                .copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: value == index
                      ? Colors.white
                      : Colors.black,
                ),
          ),
          Text(
            data[index]['day'],
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: value == index
                  ? Colors.white
                  : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
