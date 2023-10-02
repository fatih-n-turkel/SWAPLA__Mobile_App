import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../detay_sayfalari/takasla_gonderileri_tumu/takasla_gonderileri_tumunu_gor.dart';

class TakaslaGonderiKisa extends StatefulWidget {
  const TakaslaGonderiKisa({super.key});

  @override
  State<TakaslaGonderiKisa> createState() => _TakaslaGonderiKisaState();
}

class _TakaslaGonderiKisaState extends State<TakaslaGonderiKisa> {
  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TakaslaGonderileriTumunuGor()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 200,
                  height: 20,
                  child: Text(
                    "Gönderiler",
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
                        builder: (context) => const TakaslaGonderileriTumunuGor()));
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