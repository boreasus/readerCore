import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/homePageController.dart';
import './newsCard.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.controller,
    required this.width,
  });

  final HomePageController controller;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 24, bottom: 24),
        itemCount: controller.articles.length,
        itemBuilder: ((context, index) {
          return Obx(() => controller.articles[index].title!
                  .toLowerCase()
                  .contains(controller.searchController.value.toLowerCase())
              ? Column(
                  children: [
                    newsCard(
                      width: width,
                      imagePath: controller.articles[index].urlToImage ?? "",
                      title: controller.articles[index].title ?? "",
                      subTitle: controller.articles[index].content ?? "",
                    ),
                    const SizedBox(
                      height: 24,
                    )
                  ],
                )
              : Container());
        }));
  }
}
