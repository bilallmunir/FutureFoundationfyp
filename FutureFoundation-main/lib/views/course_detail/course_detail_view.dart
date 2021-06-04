import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'course_detail_view_model.dart';
          
class CourseDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CourseDetailViewModel>.reactive(
      builder: (BuildContext context, CourseDetailViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text('CourseDetail View'),
          ),
        );
      },
      viewModelBuilder: () => CourseDetailViewModel(),
    );
  }
}
