import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:new_project/core/utilities/constant.dart';

AppBar accountPageAppBar() => AppBar(
      title: const Text(
        'Hesabım',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
      ),
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: const ImageIcon(
          AssetImage('assets/icons/back.png'),
          color: Colors.black,
          size: 24,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 23),
          child: ImageIcon(
            const AssetImage('assets/icons/exit.png'),
            color: appSecondary4,
            size: 24,
          ),
        ),
      ],
    );
