import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:future_foundation/widgets/drawer.dart';
import 'package:future_foundation/widgets/field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import '../../user.dart';
import '../../widgets/app_button.dart';
import 'profile_screen_view_model.dart';

class ProfileScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileScreenViewModel>.reactive(
      builder:
          (BuildContext context, ProfileScreenViewModel viewModel, Widget _) {
        return Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            title: Text("Profile",
                style: GoogleFonts.josefinSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            backgroundColor: widgetcolor,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0),
            child: SingleChildScrollView(
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: ScreenUtil().setHeight(120),
                                  width: ScreenUtil().setWidth(120),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: widgetcolor, width: 5),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("assets/dp.png")),
                                  ),
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("My Information",
                        style: GoogleFonts.josefinSans(
                            color: widgetcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                  ),
                  Divider(
                    color: widgetcolor,
                    thickness: 4,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Student Name",
                            style: GoogleFonts.josefinSans(
                              color: widgetcolor,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Field(
                        hinttext: User.name,
                        type: false,
                        onchanged: (value) {},
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Registration Number",
                            style: GoogleFonts.josefinSans(
                              color: widgetcolor,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Field(
                        hinttext:User.id,
                        type: false,
                        disable: false,
                        onchanged: (value) {},
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Email",
                            style: GoogleFonts.josefinSans(
                              color: widgetcolor,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Field(
                        hinttext: User.email,
                        type: false,
                        onchanged: (value) {},
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Contact Number",
                            style: GoogleFonts.josefinSans(
                              color: widgetcolor,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Field(
                        hinttext: User.mob,
                        type: false,
                        onchanged: (value) {},
                      ),
                    ],
                  ),
                  AppButton(
                    text: "Update",
                    onpressed: (){},
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => ProfileScreenViewModel(),
    );
  }
}
