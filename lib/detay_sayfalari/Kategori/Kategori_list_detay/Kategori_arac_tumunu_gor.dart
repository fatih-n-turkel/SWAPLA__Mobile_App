import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/ana_sayfa/kesfet/ozel_kesfet_list.dart';

class KategoriAracTumunuGor extends StatefulWidget {
  const KategoriAracTumunuGor({super.key});

  @override
  State<KategoriAracTumunuGor> createState() => _KategoriAracTumunuGorState();
}

class _KategoriAracTumunuGorState extends State<KategoriAracTumunuGor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 50,
        title: Text(
          "Araç",
          style: GoogleFonts.getFont("Poppins",
              fontSize: 30, color: const Color.fromRGBO(11, 181, 189, 0.8)),
        ),
      ),
      body: ListView(children: [
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
      ]),
      );
  }
}