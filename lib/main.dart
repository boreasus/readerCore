import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:new_project/core/view/homePage/pages/homePage.dart';
import 'package:new_project/core/view/loginPage/pages/login.dart';
import 'package:new_project/core/view/utilitiesPage/Utilities.dart';

void main() {
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
      home: const LoginPage(),
    );
  }
}
