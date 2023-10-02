import 'dart:math';

import 'package:flutter/material.dart';
import 'package:Swapla/detay_sayfalari/Kategori/etiket_kategorileri/bayan_giyim.dart';
import 'package:Swapla/detay_sayfalari/urun_detay_sf/takas_urunleriniz.dart';

var urun_list_iki = [
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
var a = const NetworkImage('https://picsum.photos/2000');
var a1 = const NetworkImage('https://picsum.photos/3000');
var b = const NetworkImage('https://picsum.photos/2000');

class Detayi extends StatefulWidget {
  const Detayi({
    Key? key,
  }) : super(key: key);

  @override
  _DetayiState createState() => _DetayiState();
}

class _DetayiState extends State<Detayi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("data"),),
      body: Stack(
        children: <Widget>[
          Hero(
            tag: a,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                //image: AssetImage(widget.imgPath), fit: BoxFit.cover)
                image: true
                    ? a
                    : const AssetImage('images/a.png') as ImageProvider,
                fit: BoxFit.cover,
              )),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                              //küçük foto
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                height: 120,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    image: const DecorationImage(
                                      //image: AssetImage(widget.imgPath), fit: BoxFit.cover)
                                      image: true
                                          ? NetworkImage(
                                              'https://picsum.photos/2000')
                                          : AssetImage('images/a.png')
                                              as ImageProvider,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'Teklif Ver',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const EtiketBayanGiyim()));
                              },
                              child: const Text(
                                'Bayan Giyim',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 30,
                              width: MediaQuery.of(context).size.width - 170,
                              child: const Text(
                                'Az kullanılmış, siyah renkli ve gösterişli bayan elbisesi',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 10, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Tercih: ${urun_list_iki[Random().nextInt(17)]}",
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.grey,
                                      ),
                                      Text(konum_list[Random().nextInt(6)],
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 30),
                            child: FloatingActionButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const TakasUrunleriniz();
                                      //Center(child: Text("Buraya ürünleriniz gelecek"),);
                                    });
                              },
                              backgroundColor:
                                  const Color.fromRGBO(11, 181, 189, 0.8),
                              child: const Center(
                                  child: Icon(Icons.arrow_forward_ios)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 330,
            left: MediaQuery.of(context).size.width / 4,
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        //a = a1;
                        if (a == a1) {
                          a = b;
                        } else {
                          a = a1;
                        }

                        // bu hiçbir işe yaramadı, hala arkaplan fotosunu sonradan değiştiremiyorum.
                      });
                    },
                    child: const Center(
                        child: Text(
                      'Diğer Fotoğraf',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
