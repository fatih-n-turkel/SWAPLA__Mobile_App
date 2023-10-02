import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Swapla/detay_sayfalari/urun_detay_sf/takas_urunleri_listesi/takas_urunleri_list.dart';

class TakasUrunleriniz extends StatefulWidget {
  const TakasUrunleriniz({super.key});

  @override
  State<TakasUrunleriniz> createState() => _TakasUrunlerinizState();
}

class _TakasUrunlerinizState extends State<TakasUrunleriniz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Takas Yapmak İstediğiniz Ürününüzü Seçiniz",
                    style: GoogleFonts.getFont("Poppins",
                        fontSize: 16,
                        color: const Color.fromRGBO(11, 181, 189, 0.8)),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const TakasUrunlerinizList(),

              //burayı ayrı bir sayfaya atayarak yaparsan daha kolay olur.
              const SizedBox(
                height: 80,
              ),
              const TakasUrunlerinizList(),
              const SizedBox(
                height: 80,
              ),

              const TakasUrunlerinizList(),
              const SizedBox(
                height: 80,
              ),

              const TakasUrunlerinizList(),
              const SizedBox(
                height: 80,
              ),

              const TakasUrunlerinizList(),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
