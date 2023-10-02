import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Swapla/ui/ana_sayfa/premium_urunler/ozel_pre_list.dart';

class Pre_urun_tumunu_gor extends StatefulWidget {
  const Pre_urun_tumunu_gor({super.key});

  @override
  State<Pre_urun_tumunu_gor> createState() => _Pre_urun_tumunu_gorState();
}

class _Pre_urun_tumunu_gorState extends State<Pre_urun_tumunu_gor> {
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
            "Premium Ürünler",
            style: GoogleFonts.getFont("Poppins",
                fontSize: 30, color: const Color.fromRGBO(11, 181, 189, 0.8)),
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
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
                    SizedBox(
                      width: 5,
                    ),
                    OzelPremiumUrunlerList(),
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
// navigator ile tümünü göre ekle bu sayfayı