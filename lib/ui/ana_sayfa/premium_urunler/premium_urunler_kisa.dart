import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Swapla/detay_sayfalari/pre_urun_tumu/pre_urun_tumunu_gor.dart';

class PremiumUrunlerKisa extends StatefulWidget {
  const PremiumUrunlerKisa({super.key});

  @override
  State<PremiumUrunlerKisa> createState() => _PremiumUrunlerKisaState();
}

class _PremiumUrunlerKisaState extends State<PremiumUrunlerKisa> {
  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Pre_urun_tumunu_gor()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 200,
                  height: 20,
                  child: Text(
                    "Premium Ürünler",
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
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Pre_urun_tumunu_gor()));
                  },
                  child: Container(
                    alignment: Alignment.bottomRight,
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