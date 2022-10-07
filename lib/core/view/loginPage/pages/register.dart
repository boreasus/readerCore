import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:new_project/core/controller/widgetController.dart';
import 'package:new_project/core/utilities/InputFieldDoubleIcon.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/core/utilities/customRadarBox.dart';
import 'package:new_project/core/utilities/inputFieldSingleIcon.dart';
import 'package:new_project/core/utilities/longButton.dart';
import 'package:new_project/core/view/loginPage/pages/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    WidgetController widgetController = Get.find();
    final width = MediaQuery.of(context).size.width;
    final heightBox = MediaQuery.of(context).size.height * 0.02145;

    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: heightBox * 3),
              Image.asset('assets/images/reederLogo.png'),
              SizedBox(height: heightBox * 3),
              InputFieldSingleIcon(
                  pageWidth: width,
                  message: 'İsim Soyisim',
                  icon: const ImageIcon(AssetImage('assets/icons/person.png'))),
              SizedBox(height: heightBox),
              InputFieldSingleIcon(
                  pageWidth: width,
                  message: 'E-Mail Adresi',
                  icon: const ImageIcon(AssetImage('assets/icons/mail.png'))),
              SizedBox(height: heightBox),
              InputFieldSingleIcon(
                  pageWidth: width,
                  message: 'Cep Telefonu Numarası',
                  icon: const ImageIcon(AssetImage('assets/icons/phone.png'))),
              SizedBox(height: heightBox),
              InputFieldDoubleIcon(
                pageWidth: width,
                message: 'Şifre',
              ),
              SizedBox(height: heightBox),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: GestureDetector(
                        onTap: () {
                          widgetController.changeStateOfcheckBoxController(0);
                        },
                        child: CustomCheckBox(index: 0)),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Flexible(
                    flex: 9,
                    child: Text.rich(TextSpan(
                        text: 'Kullanıcı sözleşmesini',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: appGreyDarkest),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' okudum, onaylıyorum.',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: appGreyDarkest))
                        ])),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: GestureDetector(
                        onTap: () {
                          widgetController.changeStateOfcheckBoxController(1);
                        },
                        child: CustomCheckBox(index: 1)),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Flexible(
                    flex: 9,
                    child: Text.rich(TextSpan(
                        text: 'KVKK sözleşmesini',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: appGreyDarkest),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' okudum, onaylıyorum.',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: appGreyDarkest))
                        ])),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              longButton(text: 'Üye Ol', width: width),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Hesabınız var mı? ',
                    style: TextStyle(color: appGreyDarkest),
                  ),
                  GestureDetector(
                    onTap: (() {
                      Get.offAll(const LoginPage());
                    }),
                    child: Text(
                      'Giriş Yap',
                      style: TextStyle(
                        color: appPrimary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
