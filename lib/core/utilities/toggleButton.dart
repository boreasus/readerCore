import 'package:flutter/material.dart';
import './constant.dart';

class MyToggleButton extends StatelessWidget {
  final double width;
  final String text;

  const MyToggleButton({Key? key, required this.text, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 36,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: appPrimary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        onPressed: () {},
        child: Text(text,
            style: const TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
