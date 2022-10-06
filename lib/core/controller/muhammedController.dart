import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MuhammedController extends GetxController {
  final RxInt _num = 0.obs;

  RxInt get num => _num;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _num.value += 5;
  }

  void increaseNumber() {
    _num.value += 1;
  }

  void dicreaseNumber() {
    _num.value -= 1;
  }
}
