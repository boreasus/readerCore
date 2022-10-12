import 'package:flutter/material.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/src/view/accountPage/widgets/accountInfoCard.dart';
import 'package:new_project/src/view/accountPage/widgets/accountPageAppBar.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: accountPageAppBar(),
      body: const accountPageBody(),
    );
  }
}

class accountPageBody extends StatelessWidget {
  const accountPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        padding: const EdgeInsets.only(top: 20),
        height: constraints.maxHeight,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: const [
                  NameCard(),
                  SizedBox(
                    height: 24,
                  ),
                  AccountInfoCard(
                    asset: 'assets/icons/tckn.png',
                    title: 'TCKN',
                    subtitle: '24808693448',
                  ),
                  GreenDivider(),
                  AccountInfoCard(
                    asset: 'assets/icons/mail.png',
                    title: 'E-Mail',
                    subtitle: 'safa.uslu@pikselmutfak.com',
                  ),
                  GreenDivider(),
                  AccountInfoCard(
                    asset: 'assets/icons/phone.png',
                    title: 'Tel. No',
                    subtitle: '+90 (532) 1234567',
                  ),
                  GreenDivider(),
                  AccountInfoCard(
                    asset: 'assets/icons/tckn.png',
                    title: 'Adres',
                    subtitle: '24808693448',
                  ),
                  GreenDivider(),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const AccountSettingsCard(
              title: 'Bildirim Ayarları',
            ),
            GreyDivider(
              constraints: constraints.maxHeight,
            ),
            const AccountSettingsCard(
              title: 'Güvenlik Ayarları',
            ),
            GreyDivider(
              constraints: constraints.maxHeight,
            ),
            const AccountSettingsCard(
              title: 'Çıkış Yap',
            ),
            GreyDivider(
              constraints: constraints.maxHeight,
            ),
          ],
        ),
      );
    });
  }
}

class GreyDivider extends StatelessWidget {
  final constraints;
  const GreyDivider({
    required this.constraints,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: constraints / 15,
      thickness: 1,
      color: appSecondary2,
    );
  }
}

class AccountSettingsCard extends StatelessWidget {
  final title;
  const AccountSettingsCard({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 17,
            ),
          ),
          const Spacer(),
          ImageIcon(
            const AssetImage('assets/icons/rightArrow.png'),
            size: 20,
            color: appSecondary4,
          ),
        ],
      ),
    );
  }
}

class GreenDivider extends StatelessWidget {
  const GreenDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: appPrimary,
      thickness: 1,
      height: 48,
    );
  }
}
