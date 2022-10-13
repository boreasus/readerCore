import 'package:flutter/material.dart';
import 'package:new_project/core/utilities/constant.dart';

class Faults {
  late String date;
  late String content;
  late String situation;
  final technicState;
  late List<String> photoUrl;
  Faults({
    required this.date,
    required this.content,
    required this.situation,
    required this.photoUrl,
    this.technicState,
  });

  Color() {
    if (situation == "İşleme Alındı") {
      return appButtonFade1;
    } else if (situation == "Onay Bekliyor") {
      return appButtonFade4;
    } else if (situation == "İptal Edildi") {
      return appButtonFade3;
    } else {
      return Colors.black;
    }
  }
}
