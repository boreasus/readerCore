import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/src/controller/widgetController.dart';
import 'package:new_project/src/view/accountPage/pages/accountPage.dart';

class customDrawer extends StatelessWidget {
  const customDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetController controller = Get.find();
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Drawer(
        backgroundColor: appPrimary,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            ListTile(
              trailing: const ImageIcon(
                AssetImage('assets/icons/cancel.png'),
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Arıza İşlemleri',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                controller.changeStateOfBottomNavigationBar(1);
                Navigator.pop(context);
              },
            ),
            const Divider(
              height: 18,
              thickness: 1,
              color: Colors.white,
            ),
            ListTile(
              title: const Text(
                'Mesajlar',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                controller.changeStateOfBottomNavigationBar(2);

                Navigator.pop(context);
              },
            ),
            const Divider(
              height: 18,
              thickness: 1,
              color: Colors.white,
            ),
            ListTile(
              title: const Text(
                'Hesabım',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
                Get.to(const AccountPage());
              },
            ),
            const Divider(
              height: 18,
              thickness: 1,
              color: Colors.white,
            ),
            ListTile(
              title: const Text(
                'Bildirimler',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              height: 18,
              thickness: 1,
              color: Colors.white,
            ),
            ListTile(
              title: const Text(
                'Ayarlar',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              height: 18,
              thickness: 1,
              color: Colors.white,
            ),
            const Spacer(),
            ListTile(
              title: const Text(
                'Çıkış Yap',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const ImageIcon(
                AssetImage('assets/icons/exit.png'),
                color: Colors.white,
                size: 24,
              ),
            ),
            const Divider(
              height: 18,
              thickness: 1,
              color: Colors.white,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
