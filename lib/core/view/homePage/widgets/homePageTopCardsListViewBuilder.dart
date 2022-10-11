import 'package:flutter/material.dart';
import 'package:new_project/core/view/homePage/widgets/faultsTopCard.dart';

class HomePageTopCardsListViewBuilder extends StatelessWidget {
  final constraints;

  const HomePageTopCardsListViewBuilder({
    super.key,
    required this.titles,
    required this.constraints,
  });

  final List<String> titles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: ((context, index) {
          return FaultsTopCard(
            height: constraints.maxHeight / 6.3,
            width: constraints.maxHeight / 8 * 1.8,
            index: index,
            titles: titles,
          );
        }));
  }
}
