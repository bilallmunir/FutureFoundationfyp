import 'package:flutter/material.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursesInfoCard extends StatelessWidget {
  const CoursesInfoCard({
    Key key, this.courseName, this.teacher, this.cc,
  }) : super(key: key); final courseName; final teacher; final cc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
              child: Material(
          borderRadius: BorderRadius.circular(10),
          color: widgetcolor,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      Text(courseName,
                          style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(teacher,
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
      ),
    );
  }
}