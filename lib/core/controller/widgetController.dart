import 'package:get/get.dart';

class WidgetController extends GetxController {
  //TEXTFIELD WITH PASSWORD CAN MANUPLATE AND OBSERVES
  //HERE
  final RxBool _showPassController = true.obs;
  RxBool get showPassController => _showPassController;

  void changeStateOfPassController() {
    _showPassController.value = !_showPassController.value;
  }
  /////////////

  final List<RxBool> _customCheckBox = [false.obs, false.obs];
  List<RxBool> get customCheckBox => _customCheckBox;
  void changeStateOfcheckBoxController(val) {
    _customCheckBox[val].value = !_customCheckBox[val].value;
  }
}
