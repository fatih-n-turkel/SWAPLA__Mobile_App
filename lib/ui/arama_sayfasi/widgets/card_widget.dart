import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../../../config/colors_.dart';
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

var kategori_list = [
  'Giyim',
  'Elektronik',
  "Aksesuar",
  "Erkek",
  "Kadın",
  "Araç",
];

class TeacherCard extends StatelessWidget {
  const TeacherCard({
    Key? key,
    required this.faker,
  }) : super(key: key);

  final Faker faker;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 111,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greenDark.withOpacity(0.12), width: 1),
          color: Colors.white),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                faker.image.image(random: true, keywords: ["person"]),
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            width: 16,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(urun_list[Random().nextInt(17)]),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Detayi()));
                },
                child: Flexible(
                  flex: 1,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Container(
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(11, 181, 189, 0.8)),
                      child: const Center(
                        child: Text(
                          'Detay',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "⭐ 4.5 • ${faker.person.name()} • Kategori: ${kategori_list[Random().nextInt(6)]}",
                      style: const TextStyle(
                          fontSize: 10,
                          color: Color(0xff91919F),
                          fontWeight: FontWeight.normal),
                      maxLines: 1,
                    )),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
