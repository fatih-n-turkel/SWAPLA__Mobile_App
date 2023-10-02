import 'dart:math';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:Swapla/detay_sayfalari/yorum_yapma/yorum_taslagi.dart';

class YorumSayfasi extends StatefulWidget {
  const YorumSayfasi({super.key});

  @override
  State<YorumSayfasi> createState() => _YorumSayfasiState();
}

class _YorumSayfasiState extends State<YorumSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.only(left: 80),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 70,
                    height: 50,
                  ),
                  const Text(
                    "Yorumlar ",
                    style: TextStyle(fontSize: 18),
                  ),
                  LikeButton(
                    size: 30,
                    circleColor: const CircleColor(
                        start: Colors.brown, end: Colors.brown),
                    bubblesColor: const BubblesColor(
                      dotPrimaryColor: Colors.brown,
                      dotSecondaryColor: Colors.brown,
                    ),
                    likeBuilder: (bool isLiked) {
                      return Icon(
                        Icons.comment,
                        color: isLiked ? Colors.brown : Colors.grey,
                        size: 25,
                      );
                    },
                    likeCount: Random().nextInt(9999),
                    countBuilder: (int? count, bool isLiked, String text) {
                      var color = isLiked ? Colors.brown : Colors.grey;
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
                  const Divider(),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 80),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Yorumunuzu yazınız..',
                  ),
                ),
              ),
              const YorumTaslagi(),
              const SizedBox(
                height: 20,
              ),
              const YorumTaslagi(),
              const SizedBox(
                height: 20,
              ),
              const YorumTaslagi(),
              const SizedBox(
                height: 20,
              ),
              const YorumTaslagi(),
              const SizedBox(
                height: 20,
              ),
              const YorumTaslagi(),
            ],
          ),
        ),
      ]),
    );
  }
}
