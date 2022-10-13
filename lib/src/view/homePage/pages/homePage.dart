import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/core/utilities/faultCardBuilder.dart';
import 'package:new_project/src/model/Faults.dart';
import 'package:new_project/src/view/homePage/widgets/HomePageTopCardsListViewBuilder.dart';

var fault1 = Faults(
    date: '22.08.2022',
    content: 'Ön ekranın sağ üst kısmında ölü piksel var.',
    situation: 'İşleme Alındı',
    photoUrl: ['']);
var fault2 = Faults(
    date: '12.09.2022',
    content:
        'Reeder A1 sahibiyim. Telefonun garanti süresinin sona ermesine 45 gün kala kendi kendine açılma sorunu ortaya çıktı. Uzaktan bağlantı ile kontrol, fabrika ayarlarına dönüş vs çare olmadı. Servis Telefonu aldı, Wİ-Fİ modülünün olduğu kartın sıvı temasına bağlı olarak hasar gördüğünü...',
    situation: 'İşleme Alındı',
    photoUrl: ['']);
var fault3 = Faults(
    date: '01.03.2022',
    content:
        'Media Markttan aldığım Reeder A2 cep telefonumu Media Markt aracılığıyla KVK Adanaya gönderdik ve oradan da Reeder onarım merkezine gitti. Cihazın Face ID çalışmıyor. Sıvı temasından dolayı. Cihazın özellikleri içerisinde ipx8 değerinde suya dayanıklılığı var diye sattıkları cihazı yaptırmak için g...',
    situation: 'İşleme Alındı',
    photoUrl: ['']);
var fault4 = Faults(
    date: '12.04.2022',
    content:
        'Reeder A3 için orijinal şarj cihazı satın aldım bir yıl önce 20 gün önce şarj etmemeye başladı şarj cihazına baktığımda adaptörün fişe giren iki uçtan birinin adaptörün içinden koptuğunu gördüm satın aldığım yer bizden',
    situation: 'İşleme Alındı',
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
    situation: 'İşleme Alındı',
    photoUrl: ['']);

List<Faults> faults = [fault1, fault2, fault3, fault4, fault5, fault6];

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      'Aktif İşlemler',
      'Tamamlanan İşlemler',
      'İptal Olan İşlemler'
    ];
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          height: constraints.maxHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Arıza İşlemleri',
                  style: TextStyle(
                      color: appPrimary2,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: (constraints.maxHeight / 4.5),
                child: HomePageTopCardsListViewBuilder(
                  titles: titles,
                  constraints: constraints,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                child: Text(
                  'Son Arıza İşlemleri',
                  style: TextStyle(
                      color: appPrimary2,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Flexible(
                child: FaultCardBuilder(
                  faults: faults,
                  itemCount: 2,
                  constraints: constraints,
                ),
              )
            ],
          ));
    });
  }
}
