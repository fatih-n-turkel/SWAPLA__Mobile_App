import 'dart:math';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:Swapla/detay_sayfalari/urun_detay_sf/detay_yeni.dart';

class PremiumUrunlerList extends StatelessWidget {
  const PremiumUrunlerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          //const OzelPremiumUrunlerList(),
          Padding( 
            padding: const EdgeInsets.all(10),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Detayi()));
                },
                child: SizedBox(
                  height: 170,
                  width: 120,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 5,
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
                                  "beğen",
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
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            height: 80,
                            width: 80,
                            //color: Colors.yellow,
                            child: Image.asset("lib/images/red-black.png"),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Text("Ayakkabı"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Detayi()));
                },
                child: SizedBox(
                  height: 170,
                  width: 120,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 5,
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
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            height: 80,
                            width: 80,
                            //color: Colors.yellow,
                            child: Image.asset("lib/images/kemer.jpg"),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Text("Lüks Kemer"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Detayi()));
                },
                child: SizedBox(
                  height: 170,
                  width: 120,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 5,
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
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            height: 80,
                            width: 80,
                            //color: Colors.yellow,
                            child: Image.asset("lib/images/kahve_makinesi.png"),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: const Text("Çaydanlık"),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Detayi()));
                },
                child: SizedBox(
                  height: 170,
                  width: 120,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 5,
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
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            height: 80,
                            width: 80,
                            //color: Colors.yellow,
                            child: Image.asset("lib/images/tsrt.jpg"),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: const Text("Giyim"),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Detayi()));
                },
                child: SizedBox(
                  height: 170,
                  width: 120,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 5,
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
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            height: 80,
                            width: 80,
                            //color: Colors.yellow,
                            child: Image.asset("lib/images/kamera.jpg"),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Text("Elektronik"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
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
    );
  }
}
