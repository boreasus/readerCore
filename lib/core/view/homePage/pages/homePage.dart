import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/core/view/homePage/widgets/faultsBottomCard.dart';
import 'package:new_project/core/view/homePage/widgets/faultsBottomCardListViewBuilder.dart';
import 'package:new_project/core/view/homePage/widgets/homePageTopCardsListViewBuilder.dart';
import 'package:new_project/core/view/homePage/widgets/faultsTopCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      'Aktif İşlemler',
      'Tamamlanan İşlemler',
      'İptal Olan İşlemler'
    ];
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          height: constraints.maxHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Arıza İşlemleri',
                  style: TextStyle(
                      color: appPrimary2,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: (constraints.maxHeight / 4.5),
                child: HomePageTopCardsListViewBuilder(
                  titles: titles,
                  constraints: constraints,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Son Arıza İşlemleri',
                  style: TextStyle(
                      color: appPrimary2,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Flexible(
                child: faultsBottomCardListViewBuilder(
                  constraints: constraints,
                ),
              )
            ],
          ));
    });
  }
}
