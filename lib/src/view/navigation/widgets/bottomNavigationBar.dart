import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:new_project/src/controller/widgetController.dart';
import 'package:new_project/src/view/accountPage/pages/accountPage.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Widget homePage;
  final Widget faultPage;
  final Widget chatPage;
  final Widget accountPage;
  const CustomBottomNavigationBar({
    super.key,
    required this.homePage,
    required this.faultPage,
    required this.chatPage,
    required this.accountPage,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  WidgetController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.11994,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Flexible(
              child: GestureDetector(
                  onTap: () {
                    controller.changeStateOfBottomNavigationBar(0);
                  },
                  child: widget.homePage)),
          Flexible(
              child: GestureDetector(
                  onTap: () {
                    controller.changeStateOfBottomNavigationBar(1);
                  },
                  child: widget.faultPage)),
          Flexible(
              child: GestureDetector(
                  onTap: () {
                    controller.changeStateOfBottomNavigationBar(2);
                  },
                  child: widget.chatPage)),
          Flexible(
              child: GestureDetector(
                  onTap: () {
                    Get.to(AccountPage());
                  },
                  child: widget.accountPage)),
        ],
      ),
    );
  }
}
