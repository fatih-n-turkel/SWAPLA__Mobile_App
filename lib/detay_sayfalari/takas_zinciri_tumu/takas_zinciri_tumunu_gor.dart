import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../ui/ana_sayfa/takas_zinciri/ozel_takas_zinciri_list.dart';

class TakasZinciriTumunuGor extends StatefulWidget {
  const TakasZinciriTumunuGor({super.key});

  @override
  State<TakasZinciriTumunuGor> createState() => _TakasZinciriTumunuGorState();
}

class _TakasZinciriTumunuGorState extends State<TakasZinciriTumunuGor> {
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
            "Takas Zinciri",
            style: GoogleFonts.getFont("Poppins",
                fontSize: 30, color: const Color.fromRGBO(11, 181, 189, 0.8)),
          ),
        ),
      ),
      body: ListView(children: [
        Column(
          children: const [
            OzelTakasZinciriList(),
            OzelTakasZinciriList(),
            OzelTakasZinciriList(),
            OzelTakasZinciriList(),
            OzelTakasZinciriList(),
            OzelTakasZinciriList(),
          ],
        ),
      ]),
    );
  }
}
