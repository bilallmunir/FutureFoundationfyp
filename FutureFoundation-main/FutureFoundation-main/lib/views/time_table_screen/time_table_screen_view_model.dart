import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:future_foundation/core/logger.dart';

class TimeTableScreenViewModel extends BaseViewModel {
  Logger log;

  TimeTableScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
