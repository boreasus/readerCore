import 'package:flutter/material.dart';
import 'package:new_project/core/utilities/faultCard.dart';
import 'package:new_project/src/model/Faults.dart';

class FaultCardBuilder extends StatelessWidget {
  final constraints;
  final itemCount;
  final List<Faults> faults;
  const FaultCardBuilder({
    required this.itemCount,
    required this.constraints,
    required this.faults,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(bottom: 20),
        itemCount: itemCount,
        itemBuilder: ((context, index) {
          return FaultCard(
            constraints: constraints,
            index: index,
            faults: faults[index],
          );
        }));
  }
}
