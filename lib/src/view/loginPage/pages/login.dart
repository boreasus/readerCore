import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';
import 'package:new_project/core/utilities/InputFieldDoubleIcon.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/core/utilities/inputFieldSingleIcon.dart';
import 'package:new_project/core/utilities/longButton.dart';

import 'package:new_project/src/view/loginPage/pages/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final heightBox = MediaQuery.of(context).size.height * 0.02145;
    final height = MediaQuery.of(context).size.height;
    print(">>>>> $height");

    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: heightBox * 3),
            Image.asset('assets/images/reederLogo.png'),
            SizedBox(height: heightBox * 2),
            InputFieldSingleIcon(
                pageWidth: width,
                message: 'Cep Telefonu Numarası',
                icon: const ImageIcon(AssetImage('assets/icons/phone.png'))),
            SizedBox(height: heightBox),
            InputFieldDoubleIcon(pageWidth: width, message: 'Şifre'),
            SizedBox(height: heightBox / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Şifremi Unuttum',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: appSecondary2),
                ),
              ],
            ),
            SizedBox(height: heightBox * 2),
            longButton(text: 'Giriş Yap', width: width),
            SizedBox(height: heightBox / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Hesabınız yok mu ? ',
                  style: TextStyle(color: appSecondary2),
                ),
                GestureDetector(
                  onTap: (() {
                    Get.to(Register());
                  }),
                  child: Text(
                    'Üye Ol',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: appPrimary),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
