import 'package:flutter/material.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:future_foundation/widgets/courses_header.dart';
import 'package:future_foundation/widgets/courses_info_card.dart';
import 'package:future_foundation/widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'all_courses_screen_view_model.dart';

class AllCoursesScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllCoursesScreenViewModel>.reactive(
      builder: (BuildContext context, AllCoursesScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            title: Text("Courses",
                style: GoogleFonts.josefinSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            backgroundColor: widgetcolor,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Courses",
                          style: GoogleFonts.josefinSans(
                              color: widgetcolor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                      Text("3",
                          style: GoogleFonts.josefinSans(
                              color: widgetcolor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                    ],
                  ),
                ),
                Divider(
                  color: widgetcolor,
                  thickness: 2,
                ),
                CoursesHeader(),
                CoursesInfoCard(
                  courseName: "English",
                  teacher: "Ahmad Aziz",
                ),
                CoursesInfoCard(
                  courseName: "Urdu",
                  teacher: "Uzma Hussain",
                ),
                CoursesInfoCard(
                  courseName: "Math",
                  teacher: "Nasir Anjum",
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => AllCoursesScreenViewModel(),
    );
  }
}
