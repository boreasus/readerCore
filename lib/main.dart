import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:new_project/src/view/navigation/pages/bottomNavigationBarWidget.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reeder App',
      theme: ThemeData(
        fontFamily: 'Mark-Pro',
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavigationBarWidget(),
    );
  }
}
