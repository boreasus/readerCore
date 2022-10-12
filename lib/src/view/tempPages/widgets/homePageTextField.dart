import 'package:flutter/material.dart';
import '../../../controller/homePageController.dart';

class HomePageTextField extends StatelessWidget {
  const HomePageTextField({
    super.key,
    required this.controller,
  });

  final HomePageController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search),
          labelText: 'Search',
          // ignore: unnecessary_const
          border: const OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue, width: 2))),
    );
  }
}
