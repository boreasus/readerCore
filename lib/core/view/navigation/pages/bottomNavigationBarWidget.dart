// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/core/controller/widgetController.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/core/view/accountPage/pages/accountPage.dart';
import 'package:new_project/core/view/chatPage/pages/chatPage.dart';
import 'package:new_project/core/view/faultsPage/pages/faultsPage.dart';
import 'package:new_project/core/view/navigation/widgets/appBar.dart';
import 'package:new_project/core/view/navigation/widgets/bottomNavigationBar.dart';
import 'package:new_project/core/view/navigation/widgets/bottomNavigationBarItem.dart';
import 'package:new_project/core/view/homePage/pages/homePage.dart';
import 'package:new_project/core/view/navigation/widgets/customDrawer.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  WidgetController widgetController = Get.put(WidgetController());
  @override
  Widget build(BuildContext context) {
    const widgetOptions = [HomePage(), FaultsPage(), ChatPage(), AccountPage()];
    return Scaffold(
      drawer: const customDrawer(),
      appBar: customAppBar(widgetController),
      body: Obx(() => widgetOptions[widgetController.selectedIndex.value]),
      bottomNavigationBar: const CustomBottomNavigationBarWidget(),
    );
  }
}
