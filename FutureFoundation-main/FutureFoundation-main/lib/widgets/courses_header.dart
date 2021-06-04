import 'package:flutter/material.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursesHeader extends StatelessWidget {
  const CoursesHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:21.0,right: 21.0,top: 8),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Text("Course Name",
                    style: GoogleFonts.josefinSans(
                        color: widgetcolor,
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
                Text("Teacher",
                    style: GoogleFonts.josefinSans(
                        color: widgetcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}