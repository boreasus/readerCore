import 'package:flutter/material.dart';
import 'package:new_project/core/utilities/constant.dart';

class AccountInfoCard extends StatelessWidget {
  final asset;
  final title;
  final subtitle;
  const AccountInfoCard({
    required this.asset,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ImageIcon(
          AssetImage(asset),
          size: 20,
          color: appSecondary4,
        ),
        const SizedBox(width: 18),
        Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        Expanded(
          flex: 2,
          child: Text(
            subtitle,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: appSecondary4),
          ),
        ),
        ImageIcon(
          const AssetImage('assets/icons/edit.png'),
          size: 20,
          color: appSecondary4,
        ),
      ],
    );
  }
}

class NameCard extends StatelessWidget {
  const NameCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ImageIcon(
          const AssetImage('assets/icons/profileEgg.png'),
          size: 40,
          color: appSecondary2,
        ),
        const SizedBox(
          width: 16,
        ),
        const Text(
          'Mehmet Eker',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 17),
        ),
      ],
    );
  }
}
