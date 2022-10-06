import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:new_project/core/controller/muhammedController.dart';

class Muhammed2 extends StatefulWidget {
  const Muhammed2({super.key});

  @override
  State<Muhammed2> createState() => _Muhammed2State();
}

class _Muhammed2State extends State<Muhammed2> {
  MuhammedController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (() {
                  controller.dicreaseNumber();
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
              Obx(
                () => Text(
                  controller.num.value.toString(),
                  style: TextStyle(fontSize: 24),
                ),
              )
            ]),
      ),
    );
  }
}
