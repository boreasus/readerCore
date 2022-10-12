import 'package:get/get.dart';

class WidgetController extends GetxController {
  final RxBool _showPassController = true.obs;
  final List<RxBool> _customCheckBox = [false.obs, false.obs];
  final RxInt _selectedIndex = 0.obs;

  RxBool get showPassController => _showPassController;
  List<RxBool> get customCheckBox => _customCheckBox;
  RxInt get selectedIndex => _selectedIndex;

  //TEXTFIELD WITH PASSWORD CAN MANUPLATE AND OBSERVES
  //HERE
  void changeStateOfPassController() {
    _showPassController.value = !_showPassController.value;
  }

  ///CHECKBOX CONTROLLER AT LOGIN PAGE
  void changeStateOfcheckBoxController(val) {
    _customCheckBox[val].value = !_customCheckBox[val].value;
  }

  //BOTTOM NAVIGATION BAR CONTROLLER
  void changeStateOfBottomNavigationBar(val) {
    _selectedIndex.value = val;
  }
}
