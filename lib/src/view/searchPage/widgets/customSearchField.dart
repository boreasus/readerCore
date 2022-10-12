import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/src/controller/searchPageController.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SearchPageController controller = Get.find();
    return TextField(
      onSubmitted: (value) {
        controller.addNewSearchValue(value);
      },
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appPrimary, width: 2)),
          prefixIcon: ImageIcon(const AssetImage('assets/icons/search.png'),
              color: FocusScope.of(context).hasPrimaryFocus
                  ? appSecondary2
                  : appPrimary),
          labelText: 'Ara',
          labelStyle: TextStyle(
              color: FocusScope.of(context).hasPrimaryFocus
                  ? appSecondary2
                  : appPrimary),
          // ignore: unnecessary_const
          border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: appSecondary4, width: 2))),
    );
  }
}
