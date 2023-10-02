import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Swapla/detay_sayfalari/profil_detay_sayfalar%C4%B1/ana_profil/Size%20Gelen%20Teklifler/teklifleri_gor_list.dart';

class TeklifleriGor extends StatefulWidget {
  const TeklifleriGor({super.key});

  @override
  State<TeklifleriGor> createState() => _TeklifleriGorState();
}

class _TeklifleriGorState extends State<TeklifleriGor> {
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
                    "Takaslamak İstediğiniz Ürünü Seçiniz",
                    style: GoogleFonts.getFont("Poppins",
                        fontSize: 16,
                        color: const Color.fromRGBO(11, 181, 189, 0.8)),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const TeklifleriGorList(),

              //burayı ayrı bir sayfaya atayarak yaparsan daha kolay olur.
              const SizedBox(
                height: 80,
              ),
              const TeklifleriGorList(),
              const SizedBox(
                height: 80,
              ),

              const TeklifleriGorList(),
              const SizedBox(
                height: 80,
              ),

              const TeklifleriGorList(),
              const SizedBox(
                height: 80,
              ),

              const TeklifleriGorList(),
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
