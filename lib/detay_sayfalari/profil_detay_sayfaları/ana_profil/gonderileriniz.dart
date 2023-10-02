import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../ui/ana_sayfa/kesfet/ozel_kesfet_list.dart';
import '../../../ui/ana_sayfa/takasla_gonderileri/ozel_takasla_gonderileri_list.dart';

class Gonderileriniz extends StatefulWidget {
  const Gonderileriniz({super.key});

  @override
  State<Gonderileriniz> createState() => _GonderilerinizState();
}

class _GonderilerinizState extends State<Gonderileriniz> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 50,
        title: Align(alignment:Alignment.center, 
          child: Text(
            "Gönderileriniz",
            style: GoogleFonts.getFont("Poppins",
                fontSize: 30, color: const Color.fromRGBO(11, 181, 189, 0.8)),
          ),
        ),
      ),
      body: ListView(children: [
        Column(
          children: const [
            OzelTakaslaGonderileriList(),
            OzelTakaslaGonderileriList(),
            OzelTakaslaGonderileriList(),
            OzelTakaslaGonderileriList(),
            OzelTakaslaGonderileriList(),
            OzelTakaslaGonderileriList(),
          ],
        ),
    ]));
  }
}