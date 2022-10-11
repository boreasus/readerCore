import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FaultsPage extends StatefulWidget {
  const FaultsPage({super.key});

  @override
  State<FaultsPage> createState() => _FaultsPageState();
}

class _FaultsPageState extends State<FaultsPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        child: const Center(child: Text('Faults Page')),
      );
    });
  }
}
