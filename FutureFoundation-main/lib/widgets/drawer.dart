import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:google_fonts/google_fonts.dart';

import '../user.dart';
import '../views/all_courses_screen/all_courses_screen_view.dart';
import '../views/fee_screen/fee_screen_view.dart';
import '../views/home_screen/home_screen_view.dart';
import '../views/login_screen/login_screen_view.dart';
import '../views/profile_screen/profile_screen_view.dart';
import '../views/result_screen/result_screen_view.dart';
import '../views/time_table_screen/time_table_screen_view.dart';

class AppDrawer extends StatefulWidget {
  AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/dp.png')),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(User.name.toUpperCase(),
                          style: GoogleFonts.robotoSlab(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            textStyle: TextStyle(color: Colors.white),
                          )),
                      Text(User.id.toUpperCase(),
                          style: GoogleFonts.robotoSlab(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            textStyle: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: widgetcolor,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: widgetcolor1,
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreenView();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.person,
              color: widgetcolor1,
            ),
            title: Text('Profile'),
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProfileScreenView();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.menu_book_outlined,
              color: widgetcolor1,
            ),
            title: Text('Courses'),
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AllCoursesScreenView();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.calendar_today,
              color: widgetcolor1,
              size: 25,
            ),
            title: Text('TimeTable'),
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TimeTableScreenView();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              FlutterIcons.file_document_box_mco,
              color: widgetcolor1,
              size: 22,
            ),
            title: Text('Result'),
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultScreenView();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              FlutterIcons.money_bill_alt_faw5,
              color: widgetcolor1,
              size: 22,
            ),
            title: Text('Fee'),
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FeeScreenView();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              FlutterIcons.log_out_ent,
              color: widgetcolor1,
              size: 22,
            ),
            title: Text('Logout'),
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreenView();
              }));
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
