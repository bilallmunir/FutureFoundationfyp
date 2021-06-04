import 'package:flutter/material.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:future_foundation/user.dart';
import 'package:future_foundation/views/all_courses_screen/all_courses_screen_view.dart';
import 'package:future_foundation/views/fee_screen/fee_screen_view.dart';
import 'package:future_foundation/views/online_class_screen/online_class_screen_view.dart';
import 'package:future_foundation/views/profile_screen/profile_screen_view.dart';
import 'package:future_foundation/views/result_screen/result_screen_view.dart';
import 'package:future_foundation/views/time_table_screen/time_table_screen_view.dart';
import 'package:future_foundation/widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'home_screen_view_model.dart';

class HomeScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      builder: (BuildContext context, HomeScreenViewModel viewModel, Widget _) {
        return Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            title: Text("Home",
                style: GoogleFonts.josefinSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            backgroundColor: widgetcolor,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Announments",
                    style: GoogleFonts.josefinSans(
                        color: widgetcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: widgetcolor,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                Text("23",
                                    style: GoogleFonts.josefinSans(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 80)),
                                Text("Mar",
                                    style: GoogleFonts.josefinSans(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20)),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Attention Students",
                                    style: GoogleFonts.josefinSans(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                Text(
                                    "23rd March will be holiday as it's Pakistan Resolution day.",
                                    style: GoogleFonts.josefinSans(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text("Menu",
                      style: GoogleFonts.josefinSans(
                          color: widgetcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: GridView.count(
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              child: Container(
                                color: widgetcolor,
                                child: Center(
                                  child: Text("Courses",
                                      style: GoogleFonts.josefinSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return AllCoursesScreenView();
                                }));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              child: Container(
                                color: widgetcolor,
                                child: Center(
                                  child: Text("TimeTable",
                                      style: GoogleFonts.josefinSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return TimeTableScreenView();
                                }));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              child: Container(
                                color: widgetcolor,
                                child: Center(
                                  child: Text("Online Class",
                                      style: GoogleFonts.josefinSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return OnlineClassScreenView();
                                }));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              child: Container(
                                color: widgetcolor,
                                child: Center(
                                  child: Text("Result",
                                      style: GoogleFonts.josefinSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return ResultScreenView();
                                }));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              child: Container(
                                color: widgetcolor,
                                child: Center(
                                  child: Text("Fee",
                                      style: GoogleFonts.josefinSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return FeeScreenView();
                                }));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              child: Container(
                                color: widgetcolor,
                                child: Center(
                                  child: Text("Profile",
                                      style: GoogleFonts.josefinSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return ProfileScreenView();
                                }));
                              },
                            ),
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => HomeScreenViewModel(),
    );
  }
}
