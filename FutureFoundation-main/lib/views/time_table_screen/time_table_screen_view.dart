import 'package:flutter/material.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:future_foundation/widgets/drawer.dart';
import 'package:future_foundation/widgets/timetable_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'time_table_screen_view_model.dart';

class TimeTableScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TimeTableScreenViewModel>.reactive(
      builder:
          (BuildContext context, TimeTableScreenViewModel viewModel, Widget _) {
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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("TimeTable",
                        style: GoogleFonts.josefinSans(
                            color: widgetcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                  ),
                  Divider(
                    color: widgetcolor,
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Monday",
                        style: GoogleFonts.josefinSans(
                            color: widgetcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                  TimeTableHeader(),
                  TimeTableInfoCard(
                    courseName: "English",
                    time: "08:30-10:30",
                  ),
                  TimeTableInfoCard(
                    courseName: "Urdu",
                    time: "10:30-12:30",
                  ),
                   TimeTableInfoCard(
                    courseName: "Math",
                    time: "12:30-02:30",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Tuesday",
                        style: GoogleFonts.josefinSans(
                            color: widgetcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                  TimeTableHeader(),
                 TimeTableInfoCard(
                    courseName: "English",
                    time: "08:30-10:30",
                  ),
                  TimeTableInfoCard(
                    courseName: "Urdu",
                    time: "10:30-12:30",
                  ),
                   TimeTableInfoCard(
                    courseName: "Math",
                    time: "12:30-02:30",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Wednesday",
                        style: GoogleFonts.josefinSans(
                            color: widgetcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                  TimeTableHeader(),
                 TimeTableInfoCard(
                    courseName: "English",
                    time: "08:30-10:30",
                  ),
                  TimeTableInfoCard(
                    courseName: "Urdu",
                    time: "10:30-12:30",
                  ),
                   TimeTableInfoCard(
                    courseName: "Math",
                    time: "12:30-02:30",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Thursday",
                        style: GoogleFonts.josefinSans(
                            color: widgetcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                  TimeTableHeader(),
                 TimeTableInfoCard(
                    courseName: "English",
                    time: "08:30-10:30",
                  ),
                  TimeTableInfoCard(
                    courseName: "Urdu",
                    time: "10:30-12:30",
                  ),
                   TimeTableInfoCard(
                    courseName: "Math",
                    time: "12:30-02:30",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Friday",
                        style: GoogleFonts.josefinSans(
                            color: widgetcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                  TimeTableHeader(),
                 TimeTableInfoCard(
                    courseName: "English",
                    time: "08:30-10:30",
                  ),
                  TimeTableInfoCard(
                    courseName: "Urdu",
                    time: "10:30-12:30",
                  ),
                   TimeTableInfoCard(
                    courseName: "Math",
                    time: "12:30-02:30",
                  ),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => TimeTableScreenViewModel(),
    );
  }
}

class TimeTableHeader extends StatelessWidget {
  const TimeTableHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Text("Time",
                  style: GoogleFonts.josefinSans(
                      color: widgetcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            ),
            Expanded(
              child: Text("Subject",
                  style: GoogleFonts.josefinSans(
                      color: widgetcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            )
          ],
        ));
  }
}
