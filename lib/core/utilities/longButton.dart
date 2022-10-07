import 'package:flutter/material.dart';
import 'package:new_project/core/utilities/constant.dart';

class longButton extends StatelessWidget {
  final String text;
  final double width;
  const longButton({
    Key? key,
    required this.text,
    required this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 46,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            backgroundColor: appPrimary,
          ),
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          )),
    );
  }
}
