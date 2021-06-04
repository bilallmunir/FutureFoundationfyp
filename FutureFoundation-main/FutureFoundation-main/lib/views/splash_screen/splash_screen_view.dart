import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:future_foundation/views/login_screen/login_screen_view.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';
import 'splash_screen_view_model.dart';
          
class SplashScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashScreenViewModel>.reactive(
      builder: (BuildContext context, SplashScreenViewModel viewModel, Widget _) {
        return AnimatedSplashScreen(
      animationDuration: Duration(milliseconds: 2000),
      splash: 'assets/logo.jpeg',
      splashIconSize: 200,
      nextScreen: LoginScreenView(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
      },
      viewModelBuilder: () => SplashScreenViewModel(),
    );
  }
}
