import 'package:flutter/material.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultInfoCard extends StatelessWidget {
  const ResultInfoCard({
    Key key,
    this.courseName,
    this.totalMarks,
    this.obtainedMarks,
    this.percentage,
  }) : super(key: key);
  final courseName;
  final totalMarks;
  final obtainedMarks;
  final percentage;

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
                child: Text(courseName,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.josefinSans(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
              Expanded(
                child: Text(totalMarks,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.josefinSans(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
              Expanded(
                child: Text(obtainedMarks,
                    style: GoogleFonts.josefinSans(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
              Expanded(
                child: Text(percentage.toString(),
                    style: GoogleFonts.josefinSans(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
