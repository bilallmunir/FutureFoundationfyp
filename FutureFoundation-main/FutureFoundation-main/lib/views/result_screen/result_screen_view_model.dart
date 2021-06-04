import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:future_foundation/core/logger.dart';

class ResultScreenViewModel extends BaseViewModel {
  Logger log;

  ResultScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
