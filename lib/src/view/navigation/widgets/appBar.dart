import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/src/view/searchPage/pages/searchPage.dart';

AppBar customAppBar(widgetController) => AppBar(
      backgroundColor: Colors.white,
      leading: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: (() {
              Scaffold.of(context).openDrawer();
            }),
            child: ImageIcon(
              const AssetImage('assets/icons/reederBurger.png'),
              color: appPrimary,
              size: 24,
            ),
          );
        },
      ),
      title: Obx(
        () => Center(
          child: Text(
            widgetController.selectedIndex.value == 0
                ? 'Hoş Geldin Mehmet'
                : "",
            style: const TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Get.to(const SearchPage());
          },
          child: ImageIcon(
            const AssetImage('assets/icons/search.png'),
            color: appSecondary4,
            size: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ImageIcon(
            const AssetImage('assets/icons/notifications.png'),
            color: appSecondary4,
            size: 24,
          ),
        ),
      ],
    );
