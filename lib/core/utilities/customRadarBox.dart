// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:new_project/core/controller/widgetController.dart';
import 'package:new_project/core/utilities/constant.dart';

class CustomCheckBox extends StatelessWidget {
  final index;
  const CustomCheckBox({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final ImageIcon okIcon = ImageIcon(
      AssetImage('assets/icons/ok.png'),
      color: Colors.white,
    );

    WidgetController controller = Get.find();
    return Obx(
      () => Container(
        decoration: BoxDecoration(
            color: controller.customCheckBox[index].value == true
                ? appPrimary
                : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(2)),
            border: Border.all(
                width: 1,
                color: controller.customCheckBox[index].value == false
                    ? appSecondary4
                    : appPrimary)),
        width: 20,
        height: 20,
        child: Center(child: okIcon),
      ),
    );
  }
}
