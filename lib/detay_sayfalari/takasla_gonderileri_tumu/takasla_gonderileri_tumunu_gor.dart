import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:Swapla/ui/ana_sayfa/takasla_gonderileri/ozel_takasla_gonderileri_list.dart';

class TakaslaGonderileriTumunuGor extends StatefulWidget {
  const TakaslaGonderileriTumunuGor({super.key});

  @override
  State<TakaslaGonderileriTumunuGor> createState() =>
      _TakaslaGonderileriTumunuGorState();
}

class _TakaslaGonderileriTumunuGorState
    extends State<TakaslaGonderileriTumunuGor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 50,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "Swapla Gönderileri",
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
      ]),
    );
  }
}
