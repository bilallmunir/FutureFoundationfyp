import 'package:flutter/material.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeTableInfoCard extends StatelessWidget {
  const TimeTableInfoCard({
    Key key,
    this.courseName,
    this.time,
  }) : super(key: key);
  final courseName;
  final time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          color: widgetcolor,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Text(time,
                          style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(courseName,
                          style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
