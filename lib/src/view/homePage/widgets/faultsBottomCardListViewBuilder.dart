import 'package:flutter/material.dart';
import 'package:new_project/src/view/homePage/widgets/faultsBottomCard.dart';

class faultsBottomCardListViewBuilder extends StatelessWidget {
  final constraints;
  const faultsBottomCardListViewBuilder({
    required this.constraints,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(bottom: 20),
        itemCount: 12,
        itemBuilder: ((context, index) {
          return HomePageFaultBottomCard(
            constraints: constraints,
            index: index,
          );
        }));
  }
}
