import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import '../../../detay_sayfalari/takas_zinciri_tumu/takas_zinciri_tumunu_gor.dart';

class TakasZinciriKisa extends StatelessWidget {
  const TakasZinciriKisa({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: 200,
                height: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TakasZinciriTumunuGor()));
                  },
                  child: Text(
                    "Takas Zinciri",
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
                        builder: (context) => const TakasZinciriTumunuGor()));
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