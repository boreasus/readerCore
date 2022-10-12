import 'dart:ffi';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SearchPageController extends GetxController {
  final localStorage = GetStorage();
  final RxList _searchedValues = [].obs;
  RxList get searchedValues => _searchedValues;
  List temp = [];
  @override
  void onInit() {
    super.onInit();

    if (localStorage.read('searchedValue') != null) {
      _searchedValues.value = localStorage.read('searchedValue');
      print(_searchedValues.value);
    }
  }

  RxInt get getCountOfSearched => _searchedValues.value.length.obs;

  void addNewSearchValue(val) {
    if (val.length != 0) {
      if (localStorage.read('searchedValue') == null) {
        localStorage.write('searchedValue', [val]);
      } else {
        temp = localStorage.read('searchedValue');
        temp.insert(0, val);
        localStorage.write('searchedValue', temp);
      }
    }
  }
}
