import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';

import '../../ui/profil/diger_profiller.dart';

class YorumTaslagi extends StatefulWidget {
  const YorumTaslagi({super.key});

  @override
  State<YorumTaslagi> createState() => _YorumTaslagiState();
}

class _YorumTaslagiState extends State<YorumTaslagi> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DigerProfilSayfasi()));
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
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const DigerProfilSayfasi()));
                        },
                        child: const Text(
                          'Gökçe YILDIZ',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        'Çok güzel bir ürün, beğendim. Takaslamayı düşünebilirim.',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            color: Colors.black),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),],),);
  }
}