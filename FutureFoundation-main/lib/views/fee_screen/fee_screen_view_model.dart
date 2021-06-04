import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:future_foundation/core/logger.dart';

class FeeScreenViewModel extends BaseViewModel {
  Logger log;

  FeeScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
