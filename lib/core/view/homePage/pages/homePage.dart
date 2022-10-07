// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:new_project/core/controller/homePageController.dart';
import '../../../utilities/observableListViewBuilder.dart';
import '../widgets/newsListView.dart';
import '../widgets/homePageTextField.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              HomePageTextField(controller: controller),

              ObservableListView(
                controller: controller,
                widgetLoaded: NewsListView(
                  controller: controller,
                  width: width,
                ),
                widgetLoading: const Center(child: CircularProgressIndicator()),
                widgetFailed: const Center(child: Text('Failed to load data')),
              )
            ],
          )),
    );
  }
}
