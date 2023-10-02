import 'dart:math';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../../../constants/internetten_foto.dart';
import '../../../detay_sayfalari/urun_detay_sf/detay_yeni.dart';

var urun_list = [
  'Ayakkabı',
  'Buz Dolabı',
  "telefon",
  " Bilgisayar",
  "ütü",
  "çamaşır",
  "kılıf",
  "laptop",
  "ekran kartı",
  "tişört",
  "gömlek",
  "pantolon",
  "kazak",
  "bot",
  "mont",
  "klavye",
  "mouse",
  "şarj aleti"
];

var konum_list = [
  "NİLÜFER, BURSA",
  "ÜSKÜDAR, İSTANBUL",
  "AVCILAR, İSTANBUL",
  "MERKEZ, TEKİRDAĞ",
  "KEŞAN, EDİRNE",
  "SİMAV, KÜTAHYA",
  "OF, TRABZON",
  "MERKEZ, ESKİŞEHİR",
];

class OzelKesfetList extends StatefulWidget {
  const OzelKesfetList({super.key});

  @override
  State<OzelKesfetList> createState() => _OzelKesfetListState();
}

class _OzelKesfetListState extends State<OzelKesfetList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 4,
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Detayi()));
          },
          child: SizedBox(
            height: 210,
            width: 160,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          width: 120,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            LikeButton(
                              size: 25,
                              circleColor: const CircleColor(
                                  start: Colors.red, end: Colors.red),
                              bubblesColor: const BubblesColor(
                                dotPrimaryColor: Colors.red,
                                dotSecondaryColor: Colors.red,
                              ),
                              likeBuilder: (bool isLiked) {
                                return Icon(
                                  Icons.favorite,
                                  color: isLiked ? Colors.red : Colors.grey,
                                  size: 25,
                                );
                              },
                              likeCount: Random().nextInt(999),
                              countBuilder:
                                  (int? count, bool isLiked, String text) {
                                var color = isLiked ? Colors.red : Colors.grey;
                                Widget result;
                                if (count == 0) {
                                  result = Text(
                                    "love",
                                    style: TextStyle(color: color),
                                  );
                                } else {
                                  result = Text(
                                    text,
                                    style: TextStyle(color: color),
                                  );
                                }
                                return result;
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      height: 90,
                      width: 100,
                      //color: Colors.yellow,
                      child: Foto_al().foto_al,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Text(urun_list[Random().nextInt(17)]),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 20,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(11, 181, 189, 0.8)
                              .withOpacity(1)),
                      child: const Center(
                        child: Text(
                          'Detay',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Text(konum_list[Random().nextInt(6)],
                            style: const TextStyle(
                                fontSize: 10, color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
