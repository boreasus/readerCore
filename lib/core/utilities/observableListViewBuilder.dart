import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constant.dart';

class ObservableListView extends StatelessWidget {
  const ObservableListView({
    super.key,
    required this.controller,
    required this.widgetLoaded,
    required this.widgetLoading,
    required this.widgetFailed,
  });
  final controller;
  final Widget widgetLoaded;
  final Widget widgetLoading;
  final Widget widgetFailed;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Obx(() {
      if (controller.connectionState.value == AppState.loaded) {
        return widgetLoaded;
      } else if (controller.connectionState.value == AppState.loading) {
        return widgetLoading;
      } else {
        return widgetFailed;
      }
    }));
  }
}
