//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:like_button/like_button.dart';
import 'package:Swapla/ui/ana_sayfa/kesfet/kesfet_kisa.dart';
import 'package:Swapla/ui/ana_sayfa/kesfet/kesfet_urunler_list.dart';
import 'package:Swapla/ui/ana_sayfa/premium_urunler/premium_urunler_kisa.dart';
import 'package:Swapla/ui/ana_sayfa/premium_urunler/premium_urunler_list.dart';
import 'package:Swapla/ui/ana_sayfa/takas_zinciri/takas_zinciri_kisa.dart';
import 'package:Swapla/ui/ana_sayfa/takas_zinciri/takas_zinciri_list.dart';
import 'package:Swapla/ui/ana_sayfa/takasla_gonderileri/takasla_gonderileri_kisa.dart';
import 'package:Swapla/ui/ana_sayfa/takasla_gonderileri/takasla_gonderileri_list.dart';

import '../../detay_sayfalari/urun_detay_sf/detay.dart';
 
import 'kategori/kategori.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa(Key k) : super(key: k);
  @override
  AnaSayfaState createState() {
    return AnaSayfaState();
  }
}

class AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: <Widget>[
          Kategori(),
          const Divider(),
          const PremiumUrunlerKisa(),
          const SizedBox(
            width: 100, 
          ),
          const PremiumUrunlerList(),
          const Divider(),
          const KesfetUrunlerKisa(),
          const KesfeturunlerList(),
          const Divider(),
          const TakaslaGonderiKisa(),
          const TakaslaGonderileriList(),
          const Divider(),
          const TakasZinciriKisa(),
          const TakasZinciriList(),
        ],
      ),
    );
  }
}