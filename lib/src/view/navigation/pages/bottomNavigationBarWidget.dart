// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_hero/local_hero.dart';
import 'package:new_project/src/controller/widgetController.dart';
import 'package:new_project/src/view/accountPage/pages/accountPage.dart';
import 'package:new_project/src/view/chatPage/pages/chatPage.dart';
import 'package:new_project/src/view/faultsPage/pages/faultsPage.dart';
import 'package:new_project/src/view/homePage/pages/homePage.dart';
import 'package:new_project/src/view/navigation/widgets/appBar.dart';
import 'package:new_project/src/view/navigation/widgets/bottomNavigationBar.dart';
import 'package:new_project/src/view/navigation/widgets/bottomNavigationBarItem.dart';
import 'package:new_project/src/view/navigation/widgets/customDrawer.dart';

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
      bottomNavigationBar:
          const LocalHeroScope(child: CustomBottomNavigationBarWidget()),
    );
  }
}

class CustomBottomNavigationBarWidget extends StatelessWidget {
  const CustomBottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBottomNavigationBar(
      homePage: CustomBottomNavigationBarItem(
        text: 'Ana Sayfa',
        icon: AssetImage('assets/icons/homePage.png'),
        outlinedIcon: AssetImage(
          'assets/icons/homePageOutlined.png',
        ),
        index: 0,
        id: "1",
      ),
      faultPage: CustomBottomNavigationBarItem(
        text: 'Arıza İşlemleri',
        icon: AssetImage('assets/icons/faults.png'),
        outlinedIcon: AssetImage('assets/icons/faultsOutlined.png'),
        index: 1,
        id: "2",
      ),
      chatPage: CustomBottomNavigationBarItem(
        text: 'Mesaj',
        icon: AssetImage('assets/icons/chat.png'),
        outlinedIcon: AssetImage('assets/icons/chatOutlined.png'),
        index: 2,
        id: "3",
      ),
      accountPage: CustomBottomNavigationBarItem(
          text: 'Hesap',
          icon: AssetImage('assets/icons/account.png'),
          outlinedIcon: AssetImage('assets/icons/accountOutlined.png'),
          index: 3,
          id: "4"),
    );
  }
}
