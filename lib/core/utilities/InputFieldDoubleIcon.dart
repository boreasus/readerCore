import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/src/controller/widgetController.dart';

class InputFieldDoubleIcon extends StatelessWidget {
  final double pageWidth;
  final String message;
  const InputFieldDoubleIcon({
    Key? key,
    required this.pageWidth,
    required this.message,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ImageIcon iconLeft =
        ImageIcon(AssetImage('assets/icons/passwordleadinglock.png'));
    final ImageIcon iconRight =
        ImageIcon(AssetImage('assets/icons/eyeclosed.png'));
    final ImageIcon iconRightChanged =
        ImageIcon(AssetImage('assets/icons/eyeopen.png'));
    WidgetController controller = Get.put(WidgetController());
    TextEditingController textInput = TextEditingController();
    return SizedBox(
      width: pageWidth,
      child: Obx(
        () => TextField(
          obscureText: controller.showPassController.value,
          enableSuggestions: false,
          autocorrect: false,
          controller: textInput,
          decoration: InputDecoration(
              prefixIconColor: appSecondary4,
              suffixIconColor: appSecondary4,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: appPrimary),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: message,
              hintStyle: TextStyle(fontSize: 14, color: appSecondary2),
              prefixIcon: SizedBox(width: 17, height: 17, child: iconLeft),
              suffixIcon: GestureDetector(
                  onTap: () {
                    controller.changeStateOfPassController();
                  },
                  child: Obx(() => SizedBox(
                        width: 17,
                        height: 17,
                        child: controller.showPassController.value == true
                            ? iconRight
                            : iconRightChanged,
                      )))),
        ),
      ),
    );
  }
}
