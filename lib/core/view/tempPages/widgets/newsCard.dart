import 'package:flutter/material.dart';

class newsCard extends StatelessWidget {
  newsCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imagePath,
    required this.width,
  });

  final double width;
  String imagePath;
  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    if (title == null) title = "";
    if (title == null) subTitle = "";

    return Container(
      width: width,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: Row(
        children: [
          Container(
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.network(imagePath),
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            height: double.maxFinite,
            width: MediaQuery.of(context).size.width / 3,
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            height: double.maxFinite,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title.substring(0, 10),
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  subTitle.length > 50
                      ? subTitle.substring(0, 50) + "..."
                      : subTitle,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
