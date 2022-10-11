import 'package:flutter/material.dart';
import 'package:new_project/core/view/navigation/widgets/bottomNavigationBar.dart';
import 'package:new_project/core/view/navigation/widgets/bottomNavigationBarItem.dart';
import '../../../utilities/constant.dart';

class customDrawer extends StatelessWidget {
  const customDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
      ),
      faultPage: CustomBottomNavigationBarItem(
        text: 'Arıza İşlemleri',
        icon: AssetImage('assets/icons/faults.png'),
        outlinedIcon: AssetImage('assets/icons/faultsOutlined.png'),
        index: 1,
      ),
      chatPage: CustomBottomNavigationBarItem(
        text: 'Mesaj',
        icon: AssetImage('assets/icons/chat.png'),
        outlinedIcon: AssetImage('assets/icons/chatOutlined.png'),
        index: 2,
      ),
      accountPage: CustomBottomNavigationBarItem(
        text: 'Hesap',
        icon: AssetImage('assets/icons/account.png'),
        outlinedIcon: AssetImage('assets/icons/accountOutlined.png'),
        index: 3,
      ),
    );
  }
}
