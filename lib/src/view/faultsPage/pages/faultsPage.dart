import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/core/utilities/longButton.dart';
import 'package:new_project/core/utilities/singleMessageAlertDialog.dart';
import 'package:new_project/core/utilities/faultCardBuilder.dart';
import 'package:new_project/src/model/Faults.dart';

class FaultsPage extends StatefulWidget {
  const FaultsPage({super.key});

  @override
  State<FaultsPage> createState() => _FaultsPageState();
}

var fault1 = Faults(
    date: '22.08.2022',
    content: 'Ön ekranın sağ üst kısmında ölü piksel var.',
    situation: 'İşleme Alındı',
    photoUrl: ['']);
var fault2 = Faults(
    date: '12.09.2022',
    content:
        'Reeder A1 sahibiyim. Telefonun garanti süresinin sona ermesine 45 gün kala kendi kendine açılma sorunu ortaya çıktı. Uzaktan bağlantı ile kontrol, fabrika ayarlarına dönüş vs çare olmadı. Servis Telefonu aldı, Wİ-Fİ modülünün olduğu kartın sıvı temasına bağlı olarak hasar gördüğünü...',
    situation: 'Onay Bekliyor',
    photoUrl: ['']);
var fault3 = Faults(
    date: '01.03.2022',
    content:
        'Media Markttan aldığım Reeder A2 cep telefonumu Media Markt aracılığıyla KVK Adanaya gönderdik ve oradan da Reeder onarım merkezine gitti. Cihazın Face ID çalışmıyor. Sıvı temasından dolayı. Cihazın özellikleri içerisinde ipx8 değerinde suya dayanıklılığı var diye sattıkları cihazı yaptırmak için g...',
    situation: 'İptal Edildi',
    photoUrl: ['']);
var fault4 = Faults(
    date: '12.04.2022',
    content:
        'Reeder A3 için orijinal şarj cihazı satın aldım bir yıl önce 20 gün önce şarj etmemeye başladı şarj cihazına baktığımda adaptörün fişe giren iki uçtan birinin adaptörün içinden koptuğunu gördüm satın aldığım yer bizden',
    situation: 'Teknik Servis',
    technicState: 6,
    photoUrl: ['']);
var fault5 = Faults(
    date: '12.12.2022',
    content:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
    situation: 'İşleme Alındı',
    photoUrl: ['']);
var fault6 = Faults(
    date: '09.12.2022',
    content:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
    situation: 'Onay Bekliyor',
    photoUrl: ['']);

List<Faults> faults = [fault1, fault2, fault3, fault4, fault5, fault6];

class _FaultsPageState extends State<FaultsPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        padding: EdgeInsets.only(top: 20),
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
              child: Text(
                'Arıza İşlemleri',
                style: TextStyle(
                    color: appPrimary2,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Flexible(
              child: FaultCardBuilder(
                faults: faults,
                constraints: constraints,
                itemCount: faults.length,
              ),
            )
          ],
        ),
      );
    });
  }
}
