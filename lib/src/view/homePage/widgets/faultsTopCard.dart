import 'package:flutter/material.dart';
import 'package:new_project/core/utilities/constant.dart';

class FaultsTopCard extends StatelessWidget {
  final height;
  final width;
  final int index;
  final List<String> titles;

  const FaultsTopCard({
    required this.height,
    required this.width,
    required this.index,
    required this.titles,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (index == 3) {
      return Container(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: appPrimary,
              size: height * 0.64,
            ),
            SizedBox(
              height: height / 30,
            ),
            const Text(
              'Arıza Talebi Oluştur',
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    } else {
      return Row(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 9,
                    offset: Offset(0, 5), // changes position of shadow
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  titles[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: index == 0
                          ? appButtonFade1
                          : index == 1
                              ? appButtonFade2
                              : appButtonFade3),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '0',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: index == 0
                              ? appButtonFade1
                              : index == 1
                                  ? appButtonFade2
                                  : appButtonFade3),
                    ),
                    Text(
                      ' İşlem',
                      style: TextStyle(
                          color: index == 0
                              ? appButtonFade1
                              : index == 1
                                  ? appButtonFade2
                                  : appButtonFade3),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      );
    }
  }
}
