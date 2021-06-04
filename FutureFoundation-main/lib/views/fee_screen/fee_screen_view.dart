import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import '../../theme/css.dart';
import '../../theme/css.dart';
import '../../theme/css.dart';
import '../../user.dart';
import '../../widgets/app_button.dart';
import '../../widgets/drawer.dart';
import 'fee_screen_view_model.dart';

class FeeScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FeeScreenViewModel>.reactive(
      builder: (BuildContext context, FeeScreenViewModel viewModel, Widget _) {
        return Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            title: Text("Fee",
                style: GoogleFonts.josefinSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            backgroundColor: widgetcolor,
          ),
          body: SingleChildScrollView(
                      child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Future Foundation School",
                                  style: GoogleFonts.josefinSans(
                                      color: widgetcolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text("Street no 04, Satellite Town",
                                  style: GoogleFonts.josefinSans(
                                      color: widgetcolor, fontSize: 13)),
                              Text("Rawalpindi",
                                  style: GoogleFonts.josefinSans(
                                      color: widgetcolor, fontSize: 13)),
                              Text("+92 311 1234567",
                                  style: GoogleFonts.josefinSans(
                                      color: widgetcolor, fontSize: 13)),
                            ],
                          ),
                        )),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Receipt# 3245466w",
                            style: GoogleFonts.josefinSans(
                                fontWeight: FontWeight.bold,
                                color: widgetcolor,
                                fontSize: 13)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Due Date: 23-06-21",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor, fontSize: 13)),
                      ],
                    )),
                  ],
                ),
                Divider(
                  color: widgetcolor,
                  thickness: 1,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name: "+User.name,
                                  style: GoogleFonts.josefinSans(
                                      color: widgetcolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                            ],
                          ),
                        )),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Roll no: "+User.id,
                            style: GoogleFonts.josefinSans(
                                fontWeight: FontWeight.bold,
                                color: widgetcolor,
                                fontSize: 13)),
                      ],
                    )),
                  ],
                ),
                Divider(
                  color: widgetcolor,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text("Description",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ),
                      Expanded(
                        child: Text("Amount(Rs.)",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                  child: Divider(
                    color: widgetcolor,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text("Monthly Fee",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 17)),
                      ),
                      Expanded(
                        child: Text("3000",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text("Annual Subscription",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 17)),
                      ),
                      Expanded(
                        child: Text("0",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 8),
                  child: Divider(
                    color: widgetcolor,
                    thickness: 1.4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text("Total",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 17)),
                      ),
                      Expanded(
                        child: Text("3000",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("SubTotal:         3000",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("Tax:                  0",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 8),
                  child: Divider(
                    color: widgetcolor,
                    thickness: 1.4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(),
                      ),
                      Expanded(
                        child: Text("3000",
                            style: GoogleFonts.josefinSans(
                                color: widgetcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                AppButton(
                  text: "Print",
                  onpressed: () {},
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => FeeScreenViewModel(),
    );
  }
}
