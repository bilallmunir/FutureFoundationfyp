// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:future_foundation/core/router_constants.dart';

import 'package:future_foundation/views/splash_screen/splash_screen_view.dart' as view0;
import 'package:future_foundation/views/login_screen/login_screen_view.dart' as view1;
import 'package:future_foundation/views/home_screen/home_screen_view.dart' as view2;
import 'package:future_foundation/views/all_courses_screen/all_courses_screen_view.dart' as view3;
import 'package:future_foundation/views/profile_screen/profile_screen_view.dart' as view4;
import 'package:future_foundation/views/time_table_screen/time_table_screen_view.dart' as view5;
import 'package:future_foundation/views/online_class_screen/online_class_screen_view.dart' as view6;
import 'package:future_foundation/views/result_screen/result_screen_view.dart' as view7;
import 'package:future_foundation/views/fee_screen/fee_screen_view.dart' as view8;
import 'package:future_foundation/views/course_detail/course_detail_view.dart' as view9;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view0.SplashScreenView());
      case loginScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view1.LoginScreenView());
      case homeScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view2.HomeScreenView());
      case allCoursesScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view3.AllCoursesScreenView());
      case profileScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view4.ProfileScreenView());
      case timeTableScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view5.TimeTableScreenView());
      case onlineClassScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view6.OnlineClassScreenView());
      case resultScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view7.ResultScreenView());
      case feeScreenViewRoute:
        return MaterialPageRoute(builder: (_) => view8.FeeScreenView());
      case courseDetailViewRoute:
        return MaterialPageRoute(builder: (_) => view9.CourseDetailView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}