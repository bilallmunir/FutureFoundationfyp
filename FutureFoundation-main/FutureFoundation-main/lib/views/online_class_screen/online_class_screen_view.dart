import 'package:flutter/material.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:future_foundation/widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'online_class_screen_view_model.dart';

class OnlineClassScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnlineClassScreenViewModel>.reactive(
      builder: (BuildContext context, OnlineClassScreenViewModel viewModel,
          Widget _) {
        return Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            title: Text("Online Classes Link",
                style: GoogleFonts.josefinSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            backgroundColor: widgetcolor,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Online Courses",
                        style: GoogleFonts.josefinSans(
                            color: widgetcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                  ),
                  Divider(
                    color: widgetcolor,
                    thickness: 2,
                  ),
                  OnlineClassCard(
                      courseName: 'English',
                      link:
                          'https://support.microsoft.com/en-us/office/schedule-a-meeting-in-teams-943507a9-8583-4c58-b5d2-8ec8265e04e5',
                      ontap: () {
                        viewModel.launchInBrowser(
                            'https://support.microsoft.com/en-us/office/schedule-a-meeting-in-teams-943507a9-8583-4c58-b5d2-8ec8265e04e5');
                      }),
                  OnlineClassCard(
                      courseName: 'Urdu',
                      link:
                          'https://support.microsoft.com/en-us/office/schedule-a-meeting-in-teams-943507a9-8583-4c58-b5d2-8ec8265e04e5',
                      ontap: () {
                        viewModel.launchInBrowser(
                            'https://support.microsoft.com/en-us/office/schedule-a-meeting-in-teams-943507a9-8583-4c58-b5d2-8ec8265e04e5');
                      }),
                  OnlineClassCard(
                      courseName: 'Math',
                      link:
                          'https://support.microsoft.com/en-us/office/schedule-a-meeting-in-teams-943507a9-8583-4c58-b5d2-8ec8265e04e5',
                      ontap: () {
                        viewModel.launchInBrowser(
                            'https://support.microsoft.com/en-us/office/schedule-a-meeting-in-teams-943507a9-8583-4c58-b5d2-8ec8265e04e5');
                      }),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => OnlineClassScreenViewModel(),
    );
  }
}

class OnlineClassCard extends StatelessWidget {
  const OnlineClassCard({
    Key key,
    this.courseName,
    this.link,
    this.ontap,
  }) : super(key: key);
  final courseName;
  final link;
  final ontap;

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    children: [
                      Text('Course: ' + courseName,
                          style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text('link:',
                      style: GoogleFonts.josefinSans(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(link,
                      style: GoogleFonts.josefinSans(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ),
              ],
            ),
          ),
        ),
        onTap: ontap,
      ),
    );
  }
}
