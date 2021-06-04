import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:future_foundation/core/logger.dart';

class CourseDetailViewModel extends BaseViewModel {
  Logger log;

  CourseDetailViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
