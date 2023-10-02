import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../ui/ana_sayfa/kesfet/ozel_kesfet_list.dart';

class YayindaOlanUrunleriniz extends StatefulWidget {
  const YayindaOlanUrunleriniz({super.key});

  @override
  State<YayindaOlanUrunleriniz> createState() => _YayindaOlanUrunlerinizState();
}

class _YayindaOlanUrunlerinizState extends State<YayindaOlanUrunleriniz> {
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
            "Yayında Olan Ürünleriniz",
            style: GoogleFonts.getFont("Poppins",
                fontSize: 20, color: const Color.fromRGBO(11, 181, 189, 0.8)),
          ),
        ),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelKesfetList(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
