import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/core/utilities/inputFieldSingleIcon.dart';
import 'package:new_project/core/utilities/InputFieldDoubleIcon.dart';
import 'package:new_project/core/utilities/longButton.dart';
import 'package:new_project/core/utilities/toggleButton.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  SnackbarController getfunc() {
    return Get.showSnackbar(GetSnackBar(
      title: 'DENEME',
      borderColor: Colors.red,
      overlayColor: Colors.white,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: double.maxFinite,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            GestureDetector(
                onTap: (() {}),
                child: longButton(
                  text: 'Giriş Yap',
                  width: width,
                )),
            SizedBox(
              height: 40,
            ),
            MyToggleButton(text: 'Üye Ol', width: width),
            SizedBox(
              height: 40,
            ),
            // InputFieldSingleIcon(
            //     pageWidth: width,
            //     message: 'Cep Telefonu Numarası',
            //     icon: Icon(Icons.phone_outlined)),
            SizedBox(
              height: 40,
            ),
            // InputFieldDoubleIcon(
            //     pageWidth: width,
            //     message: 'deneme',
            //     icon1: Icon(Icons.lock_outline),
            //     icon2: Icon(Icons.remove_red_eye))
          ]),
        ),
      ),
    );
  }
}
