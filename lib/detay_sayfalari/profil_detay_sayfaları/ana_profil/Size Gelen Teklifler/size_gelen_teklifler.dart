import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Swapla/detay_sayfalari/profil_detay_sayfalar%C4%B1/ana_profil/Size%20Gelen%20Teklifler/teklifleri_gor.dart';

import '../../../../ui/profil/diger_profiller.dart';
import '../../../urun_detay_sf/detay_yeni.dart';
import '../../../urun_detay_sf/takas_urunleriniz.dart';

class SizeGelenTeklifler extends StatefulWidget {
  const SizeGelenTeklifler({super.key});

  @override
  State<SizeGelenTeklifler> createState() => _SizeGelenTekliflerState();
}

class _SizeGelenTekliflerState extends State<SizeGelenTeklifler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "Size Gelen Teklifler",
            style: GoogleFonts.getFont("Poppins",
                fontSize: 30, color: const Color.fromRGBO(11, 181, 189, 0.8)),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: Container(
                height: 400,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const DigerProfilSayfasi()));
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage('lib/images/k_logo.png'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const DigerProfilSayfasi()));
                                },
                                child: const Text(
                                  'Admin Hesabı',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                '2 saat önce',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: PopupMenuButton(
                              // add icon, by default "3 dot" icon
                              icon: const Icon(
                                Icons.more_vert,
                                color: Colors.grey,
                              ),
                              itemBuilder: (context) {
                                return [
                                  const PopupMenuItem<int>(
                                    value: 0,
                                    child: Text("Ürünü Sil"),
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                if (value == 0) {
                                  print("My account menu is selected.");
                                } else if (value == 1) {
                                  print("Settings menu is selected.");
                                } else if (value == 2) {
                                  print("Logout menu is selected.");
                                }
                              }),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Kırmızı erkek kazak M beden',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Detayi()));
                          },
                          child: Hero(
                            tag:
                                const NetworkImage('https://picsum.photos/200'),
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    //image: AssetImage(widget.imgPath), fit: BoxFit.cover)
                                    image: true
                                        ? NetworkImage(
                                            'https://picsum.photos/2000')
                                        : AssetImage('images/a.png')
                                            as ImageProvider,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromRGBO(11, 181, 189, 0.8)
                                    .withOpacity(1)),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const TeklifleriGor();
                                        //Center(child: Text("Buraya ürünleriniz gelecek"),);
                                      });
                                  //return debugPrint("basıldı");
                                },
                                child: const Text(
                                  'Teklifleri Gör',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
