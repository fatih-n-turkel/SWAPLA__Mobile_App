import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:Swapla/ui/mesajlar/presentation/yeni_mesajlar.dart';

import '../../../../ui/profil/diger_profiller.dart';

var urun_list = [
  'Az kullanılmış siyah spor ayakkabı',
  '2 yıllık çalışır durumda Buz Dolabı',
  "İphone 12 1 yıl garantili",
  " Bilgisayar",
  "bozuk ütü",
  "çamaşır makinesi çalışır durumda",
  "Xiaomi Mi Note 3  siyah şeffaf kılıf",
  "Monster Abra A5 V15.2 Gaming Laptop",
  "RTX 3060 ekran kartı - Sıfır",
  "beyaz erkek tişört",
  "çizgili enişte gömleği",
  "34-32 beden kumaş erkek pantolon",
  "kadın için renkli kazak",
  "kışlık dondurmaz su geçirmez bot",
  "mavi marka erkek mont",
  "RGB ışıklı gaming klavye",
  "bluetooth mouse",
  "İphone lightning şarj aleti orijinal"
];

class TeklifleriGorList extends StatefulWidget {
  const TeklifleriGorList({super.key});

  @override
  State<TeklifleriGorList> createState() => _TeklifleriGorListState();
}

class _TeklifleriGorListState extends State<TeklifleriGorList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('Takas İsteği Kabul Edildi!'),
            action: SnackBarAction(
              //üstteki navigator.pop'u silmeden bu kısım çalışmıyor
              label: 'Mesaj Gönder',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const YeniMesajlar()));
              },
            )));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          SizedBox(
            //width: MediaQuery.of(context).size.width - 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const DigerProfilSayfasi()));
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage('lib/images/model1.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(height: 5,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DigerProfilSayfasi()));
                  }, 
                  child: const Text(
                    'Gökçe YILDIZ',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '34 dakika önce',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          SizedBox(
              width: 100,
              height: 70,
              child: Text(urun_list[Random().nextInt(17)])),
          //Image.network(
          //  'https://picsum.photos/100')
          SizedBox(
            width: 100,
            height: 70,
            child: Image.network(
              faker.image.image(random: true, keywords: ["product"]),
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
