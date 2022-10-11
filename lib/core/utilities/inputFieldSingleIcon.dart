import 'package:flutter/material.dart';
import 'package:new_project/core/utilities/constant.dart';
import './constant.dart';

class InputFieldSingleIcon extends StatelessWidget {
  final double pageWidth;
  final String message;
  final ImageIcon icon;
  const InputFieldSingleIcon(
      {Key? key,
      required this.pageWidth,
      required this.message,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController text = TextEditingController();
    return SizedBox(
      width: pageWidth,
      child: TextField(
        controller: text,
        decoration: InputDecoration(
            prefixIconColor: appSecondary4,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appPrimary),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: message,
            hintStyle: TextStyle(fontSize: 14, color: appGreyDarker),
            prefixIcon: SizedBox(width: 17, height: 17, child: icon)),
      ),
    );
  }
}
