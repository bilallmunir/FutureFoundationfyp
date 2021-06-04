import 'package:flutter/material.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultHeader extends StatelessWidget {
  const ResultHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 8),
      child: Row(
        children: [
          Expanded(
                      child: Text("Subject",
                style: GoogleFonts.josefinSans(
                    color: widgetcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ),
          Expanded(
                      child: Text("Total Marks",
                style: GoogleFonts.josefinSans(
                    color: widgetcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ),
           Expanded(
                        child: Text("Obtained Marks",
                 style: GoogleFonts.josefinSans(
                     color: widgetcolor,
                     fontWeight: FontWeight.bold,
                     fontSize: 15)),
           ),
           Expanded(
                        child: Text("Percentage",
                 style: GoogleFonts.josefinSans(
                     color: widgetcolor,
                     fontWeight: FontWeight.bold,
                     fontSize: 15)),
           ),
        ],
      ),
    );
  }
}