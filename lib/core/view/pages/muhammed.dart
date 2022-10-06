import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:new_project/core/controller/muhammedController.dart';
import 'package:new_project/core/view/pages/muhammed2.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  MuhammedController controller = Get.put(MuhammedController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnaSayfa'),
      ),
      body: Container(
        height: double.maxFinite,
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  controller.num.value.toString(),
                  style: TextStyle(fontSize: 32),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  controller.increaseNumber();
                }),
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'CLICK',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (() {
                  Get.to(Muhammed2());
                }),
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'CLICK',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
