import 'package:flutter/material.dart';
import 'package:new_project/core/utilities/constant.dart';

class Period extends StatelessWidget {
  final int periodSituation;
  final bool isVisible;
  const Period({
    super.key,
    required this.periodSituation,
    required this.isVisible,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isVisible == true ? 20 : 0,
      width: isVisible == true ? 200 : 0,
      child: Row(
        children: [
          periodIcon(
            url: 'assets/icons/periodOne.png',
            position: 0,
            periodSituation: periodSituation,
          ),
          FirstHalf(
            position: 1,
            periodSituation: periodSituation,
          ),
          SecondHalf(
            position: 2,
            periodSituation: periodSituation,
          ),
          periodIcon(
            url: 'assets/icons/periodTwo.png',
            position: 3,
            periodSituation: periodSituation,
          ),
          FirstHalf(
            position: 4,
            periodSituation: periodSituation,
          ),
          SecondHalf(
            position: 5,
            periodSituation: periodSituation,
          ),
          periodIcon(
            url: 'assets/icons/periodThree.png',
            position: 6,
            periodSituation: periodSituation,
          ),
          FirstHalf(
            position: 7,
            periodSituation: periodSituation,
          ),
          SecondHalf(
            position: 8,
            periodSituation: periodSituation,
          ),
          periodIcon(
            url: 'assets/icons/periodFour.png',
            position: 9,
            periodSituation: periodSituation,
          ),
        ],
      ),
    );
  }
}

class periodIcon extends StatelessWidget {
  final position;
  final url;
  final periodSituation;

  const periodIcon({
    required this.position,
    required this.url,
    required this.periodSituation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(url),
      color: position <= periodSituation ? appPrimary : appSecondary4,
    );
  }
}

class SecondHalf extends StatelessWidget {
  final position;
  final periodSituation;

  const SecondHalf({
    super.key,
    required this.periodSituation,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 4,
        color: position <= periodSituation ? appPrimary : appSecondary4,
      ),
    );
  }
}

class FirstHalf extends StatelessWidget {
  final position;
  final periodSituation;

  const FirstHalf({
    required this.periodSituation,
    required this.position,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 4,
        color: periodSituation == position
            ? appPrimary
            : position < periodSituation
                ? appPrimary
                : Colors.grey,
      ),
    );
  }
}
