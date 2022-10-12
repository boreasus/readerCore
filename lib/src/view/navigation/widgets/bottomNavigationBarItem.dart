import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/src/controller/widgetController.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  final String text;
  final AssetImage icon;
  final AssetImage outlinedIcon;
  final int index;
  const CustomBottomNavigationBarItem({
    super.key,
    required this.text,
    required this.icon,
    required this.outlinedIcon,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    WidgetController controller = Get.find();
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width / 4,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Obx(
            () => Container(
              decoration: BoxDecoration(
                  color: controller.selectedIndex.value == index
                      ? appPrimary
                      : Colors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              width: constraints.maxWidth / 2,
              height: 5,
            ),
          );
        }),
        const Spacer(),
        Obx(
          () => Column(
            children: [
              Hero(
                tag: '$index',
                child: ImageIcon(
                  controller.selectedIndex.value == index ? icon : outlinedIcon,
                  color: controller.selectedIndex.value == index
                      ? appPrimary
                      : appSecondary4,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: TextStyle(
                    color: controller.selectedIndex.value == index
                        ? appPrimary
                        : appSecondary4,
                    fontWeight: controller.selectedIndex.value == index
                        ? FontWeight.bold
                        : FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const Spacer(),
        const Spacer(),
      ]),
    );
  }
}
