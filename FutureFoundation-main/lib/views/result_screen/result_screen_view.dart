import 'package:flutter/material.dart';
import 'package:future_foundation/widgets/result_card.dart';
import 'package:future_foundation/widgets/result_header.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import '../../theme/css.dart';
import '../../user.dart';
import '../../widgets/drawer.dart';

import 'result_screen_view_model.dart';

class ResultScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ResultScreenViewModel>.reactive(
      builder:
          (BuildContext context, ResultScreenViewModel viewModel, Widget _) {
        return Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            title: Text("Result",
                style: GoogleFonts.josefinSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            backgroundColor: widgetcolor,
          ),
          body: SingleChildScrollView(
                      child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("First Term Result",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ],
                    ),
                  ),
                  Divider(
                    color: widgetcolor,
                    thickness: 2,
                  ),
                  ResultHeader(),
                  ResultInfoCard(
                    courseName: "English",
                    totalMarks: "100",
                    obtainedMarks: User.englishMarks1,
                    percentage: User.englishMarks1+"%",
                  ),
                  ResultInfoCard(
                    courseName: "Urdu",
                    totalMarks: "100",
                    obtainedMarks: User.urduMarks1,
                    percentage: User.urduMarks1+"%",
                  ),
                  ResultInfoCard(
                    courseName: "Math",
                    totalMarks: "100",
                    obtainedMarks: User.mathMarks1,
                    percentage: User.mathMarks1+"%",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Second Term Result",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ],
                    ),
                  ),
                  Divider(
                    color: widgetcolor,
                    thickness: 2,
                  ),
                  ResultHeader(),
                  ResultInfoCard(
                    courseName: "English",
                    totalMarks: "100",
                    obtainedMarks: User.englishMarks2,
                    percentage: User.englishMarks2+"%",
                  ),
                  ResultInfoCard(
                    courseName: "Urdu",
                    totalMarks: "100",
                    obtainedMarks: User.urduMarks2,
                    percentage: User.urduMarks2+"%",
                  ),
                  ResultInfoCard(
                    courseName: "Math",
                    totalMarks: "100",
                    obtainedMarks: User.mathMarks2,
                    percentage: User.mathMarks2+"%",
                  ),
                   SizedBox(
                    height: 20,
                  ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Final Term Result",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ],
                    ),
                  ),
                  Divider(
                    color: widgetcolor,
                    thickness: 2,
                  ),
                  ResultHeader(),
                  ResultInfoCard(
                    courseName: "English",
                    totalMarks: "100",
                    obtainedMarks: User.englishMarks3,
                    percentage: User.englishMarks3+"%",
                  ),
                  ResultInfoCard(
                    courseName: "Urdu",
                    totalMarks: "100",
                    obtainedMarks: User.urduMarks3,
                    percentage: User.urduMarks3+"%",
                  ),
                  ResultInfoCard(
                    courseName: "Math",
                    totalMarks: "100",
                    obtainedMarks: User.mathMarks3,
                    percentage: User.mathMarks3+"%",
                  ),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => ResultScreenViewModel(),
    );
  }
}
