import 'dart:math';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../../../detay_sayfalari/urun_detay_sf/detay_yeni.dart';

class KesfeturunlerList extends StatefulWidget {
  const KesfeturunlerList({super.key});

  @override
  State<KesfeturunlerList> createState() => _KesfeturunlerListState();
}

class _KesfeturunlerListState extends State<KesfeturunlerList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Material(
                  borderRadius: BorderRadius.circular(16),
                  elevation: 4,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Detayi()));
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
                                            color: isLiked
                                                ? Colors.red
                                                : Colors.grey,
                                            size: 25,
                                          );
                                        },
                                        likeCount: Random().nextInt(999),
                                        countBuilder: (int? count, bool isLiked,
                                            String text) {
                                          var color = isLiked
                                              ? Colors.red
                                              : Colors.grey;
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
                                child: Image.asset("lib/images/sari_canta.jpg"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 30),
                                child: const Text("Çanta"),
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
                                    color:
                                        const Color.fromRGBO(11, 181, 189, 0.8)
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
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                  ),
                                  Text("ÜSKÜDAR, İSTANBUL",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Material(
                  borderRadius: BorderRadius.circular(16),
                  elevation: 4,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Detayi()));
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
                                            color: isLiked
                                                ? Colors.red
                                                : Colors.grey,
                                            size: 25,
                                          );
                                        },
                                        likeCount: Random().nextInt(999),
                                        countBuilder: (int? count, bool isLiked,
                                            String text) {
                                          var color = isLiked
                                              ? Colors.red
                                              : Colors.grey;
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
                                child: Image.asset("lib/images/kamera.jpg"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 15),
                                child: const Text("Eski Kamera"),
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
                                    color:
                                        const Color.fromRGBO(11, 181, 189, 0.8)
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
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                  ),
                                  Text("ŞARKÖY, TEKİRDAĞ",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Material(
                  borderRadius: BorderRadius.circular(16),
                  elevation: 4,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Detayi()));
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
                                            color: isLiked
                                                ? Colors.red
                                                : Colors.grey,
                                            size: 25,
                                          );
                                        },
                                        likeCount: Random().nextInt(999),
                                        countBuilder: (int? count, bool isLiked,
                                            String text) {
                                          var color = isLiked
                                              ? Colors.red
                                              : Colors.grey;
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
                                child: Image.asset("lib/images/jungle.png"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 20),
                                child: const Text("Ayakkabı"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 15),
                                height: 20,
                                width: 75,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(11, 181, 189, 0.8)
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
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                  ),
                                  Text("ÜSKÜDAR, İSTANBUL",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Material(
                  borderRadius: BorderRadius.circular(16),
                  elevation: 4,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Detayi()));
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
                                            color: isLiked
                                                ? Colors.red
                                                : Colors.grey,
                                            size: 25,
                                          );
                                        },
                                        likeCount: Random().nextInt(999),
                                        countBuilder: (int? count, bool isLiked,
                                            String text) {
                                          var color = isLiked
                                              ? Colors.red
                                              : Colors.grey;
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
                                child: Image.asset("lib/images/telefon.jpg"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 20),
                                child: const Text("Telefon"),
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
                                    color:
                                        const Color.fromRGBO(11, 181, 189, 0.8)
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
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                  ),
                                  Text("NİLÜFER, BURSA",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Material(
                  borderRadius: BorderRadius.circular(16),
                  elevation: 4,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Detayi()));
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
                                            color: isLiked
                                                ? Colors.red
                                                : Colors.grey,
                                            size: 25,
                                          );
                                        },
                                        likeCount: Random().nextInt(999),
                                        countBuilder: (int? count, bool isLiked,
                                            String text) {
                                          var color = isLiked
                                              ? Colors.red
                                              : Colors.grey;
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
                                child:
                                    Image.asset("lib/images/pembe_cicek.jpg"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 20),
                                child: const Text("Süs Bitkisi"),
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
                                    color:
                                        const Color.fromRGBO(11, 181, 189, 0.8)
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
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                  ),
                                  Text("ÜSKÜDAR, İSTANBUL",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Material(
                  borderRadius: BorderRadius.circular(16),
                  elevation: 4,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Detayi()));
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
                                    width: 110,
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
                                            color: isLiked
                                                ? Colors.red
                                                : Colors.grey,
                                            size: 25,
                                          );
                                        },
                                        likeCount: Random().nextInt(999),
                                        countBuilder: (int? count, bool isLiked,
                                            String text) {
                                          var color = isLiked
                                              ? Colors.red
                                              : Colors.grey;
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
                                child: Image.asset("lib/images/black-gray.png"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 20),
                                child: const Text("Ayakkabı"),
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
                                    color:
                                        const Color.fromRGBO(11, 181, 189, 0.8)
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
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                  ),
                                  Text("ÜSKÜDAR, İSTANBUL",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
