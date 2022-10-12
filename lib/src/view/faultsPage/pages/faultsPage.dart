import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/core/utilities/longButton.dart';
import 'package:new_project/core/utilities/singleMessageAlertDialog.dart';

class FaultsPage extends StatefulWidget {
  const FaultsPage({super.key});

  @override
  State<FaultsPage> createState() => _FaultsPageState();
}

class _FaultsPageState extends State<FaultsPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        child: Center(
            child: TextButton(
          onPressed: () {
            Get.dialog(const SingleMessageAlertDialog(
                text: 'TCKN Başarıyla Kaydedildi!'));
          },
          child: Container(
              color: Colors.amber,
              height: 50,
              width: 200,
              child: const Center(
                child: Text(
                  'CLICK',
                  textAlign: TextAlign.center,
                ),
              )),
        )),
      );
    });
  }
}
