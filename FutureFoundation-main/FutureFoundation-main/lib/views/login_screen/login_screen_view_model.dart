import 'package:future_foundation/core/locator.dart';
import 'package:future_foundation/user.dart';
import 'package:future_foundation/views/home_screen/home_screen_view.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:future_foundation/core/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginScreenViewModel extends BaseViewModel {
  Logger log;
  var reg;
  var password;

  final _navService = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();

  navigateToHome() {
    _navService.navigateToView(HomeScreenView());
  }

  login() {
    if (reg.toString().toUpperCase() == "FF-07-033" && password == "1234567") {
      User.id = "FF-07-033";
      User.name = "Bilal Munir";
      User.email = "Bilal_Munir12@gmail.com";
      User.mob = "0333-4554432";
      User.englishMarks1 = "76";
      User.englishMarks2 = "55";
      User.englishMarks3 = "90";
      User.urduMarks1 = "85";
      User.urduMarks2 = "66";
      User.urduMarks3 = "73";
      User.mathMarks1 = "67";
      User.mathMarks2 = "78";
      User.mathMarks3 = "95";

      navigateToHome();
    } else if (reg.toString().toUpperCase() == "FF-07-001" &&
        password == "112233") {
      User.id = "FF-07-001";
      User.name = "Faizan Khan";
      User.email = "FaizanKhan98@yahoo.com";
      User.mob = "0300-6239812";
      User.englishMarks1 = "87";
      User.englishMarks2 = "90";
      User.englishMarks3 = "50";
      User.urduMarks1 = "74";
      User.urduMarks2 = "88";
      User.urduMarks3 = "65";
      User.mathMarks1 = "90";
      User.mathMarks2 = "76";
      User.mathMarks3 = "88";
      navigateToHome();
    } else
      _snackbarService.showSnackbar(message: "Student Does not exist");
  }

  LoginScreenViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
