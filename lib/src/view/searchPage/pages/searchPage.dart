import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/src/controller/searchPageController.dart';
import 'package:new_project/src/view/searchPage/widgets/customSearchField.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    SearchPageController controller = Get.put(SearchPageController());
    return Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.abc), Icon(Icons.abc)],
          title: const Center(
              child: Text(
            'Arama',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          )),
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: (() {
              Get.back();
            }),
            child: const ImageIcon(
              AssetImage('assets/icons/back.png'),
              color: Colors.black,
            ),
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
            return Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              height: constraint.maxHeight,
              width: constraint.maxWidth,
              child: Column(
                children: [
                  CustomSearchField(),
                  Flexible(
                    child: Obx(
                      () => ListView.builder(
                          padding: const EdgeInsets.only(top: 20),
                          itemCount: controller.getCountOfSearched.value,
                          itemBuilder: ((context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Geçmiş Aramalar',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: controller.searchedValues.value
                                                      .length !=
                                                  0 &&
                                              index == 0
                                          ? 20
                                          : 0),
                                ),
                                SizedBox(
                                  height:
                                      controller.searchedValues.value.length !=
                                                  0 &&
                                              index == 0
                                          ? 20
                                          : 0,
                                ),
                                Obx(
                                  () => Text(
                                    controller.searchedValues.value[index]
                                        .toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Divider(
                                  color: appPrimary,
                                  height: 36,
                                  thickness: 1,
                                )
                              ],
                            );
                          })),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
