import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../detay_sayfalari/kesfet_urun_tumu/kesfet_urun_tumunu_gor.dart';

class KesfetUrunlerKisa extends StatefulWidget {
  const KesfetUrunlerKisa({super.key});

  @override
  State<KesfetUrunlerKisa> createState() => _KesfetUrunlerKisaState();
}

class _KesfetUrunlerKisaState extends State<KesfetUrunlerKisa> {
  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Kesfet_urun_tumunu_gor()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 200,
                  height: 20,
                  child: Text(
                    "Keşfet",
                    style: GoogleFonts.getFont(
                      "Noto Serif Georgian",
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 70,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Kesfet_urun_tumunu_gor()));
                    },
                    child: const Text(
                      "Tümünü gör..",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}