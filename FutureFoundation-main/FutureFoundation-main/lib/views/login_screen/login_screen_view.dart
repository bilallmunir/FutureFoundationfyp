import 'package:flutter/material.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:future_foundation/widgets/app_button.dart';
import 'package:future_foundation/widgets/field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login_screen_view_model.dart';

class LoginScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginScreenViewModel>.reactive(
      builder:
          (BuildContext context, LoginScreenViewModel viewModel, Widget _) {
        return ScreenUtilInit(
          designSize: Size(360, 690),
          builder: () => Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 10, color: widgetcolor),
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage("assets/logo.jpeg"))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF71C7EC),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(
                              children: [
                                Text(
                                  "Login",
                                  style: GoogleFonts.montserrat(
                                      color: widgetcolor1,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 40),
                                ),
                              ],
                            ),
                          ),
                          Field(
                            hinttext: 'FF-11-111',
                            type: false,
                            formatter: "AA-##-###",
                            onchanged: (value) {
                              viewModel.reg = value;
                            },
                          ),
                          Field(
                            hinttext: 'Password',
                            type: true,
                            onchanged: (value) {
                              viewModel.password = value;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          AppButton(
                            text: "Login",
                            onpressed: () {
                              viewModel.login();
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => LoginScreenViewModel(),
    );
  }
}
