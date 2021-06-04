import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:future_foundation/core/logger.dart';

class AllCoursesScreenViewModel extends BaseViewModel {
  Logger log;

  AllCoursesScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
