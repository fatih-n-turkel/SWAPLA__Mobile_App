import 'package:Swapla/ui/profil/profil_duzenleme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Swapla/detay_sayfalari/profil_detay_sayfalar%C4%B1/ana_profil/Size%20Gelen%20Teklifler/size_gelen_teklifler.dart';
import 'package:Swapla/detay_sayfalari/profil_detay_sayfalar%C4%B1/ana_profil/begendigin_urunler.dart';
import 'package:Swapla/detay_sayfalari/profil_detay_sayfalar%C4%B1/ana_profil/gecmis_takaslariniz.dart';
import 'package:Swapla/detay_sayfalari/profil_detay_sayfalar%C4%B1/ana_profil/gonderileriniz.dart';
import 'package:Swapla/detay_sayfalari/profil_detay_sayfalar%C4%B1/ana_profil/takas_puan_magazasi/takas_puan_magazasi.dart';
import 'package:Swapla/detay_sayfalari/profil_detay_sayfalar%C4%B1/ana_profil/takas_zincirleriniz.dart';
import 'package:Swapla/detay_sayfalari/profil_detay_sayfalar%C4%B1/ana_profil/yayinda_olan_urunleriniz.dart';
import 'package:Swapla/detay_sayfalari/profil_detay_sayfalar%C4%B1/diger_profil/d_begenilen_paylasimlar.dart';
import 'package:Swapla/detay_sayfalari/profil_detay_sayfalar%C4%B1/takip_takipci/takip_list.dart';
import 'package:Swapla/ui/urun_yukleme/foto_aktar.dart';

import '../../constants/firebase_sabit.dart';
import '../../detay_sayfalari/profil_detay_sayfaları/takip_takipci/takipci_list.dart';
import '../../detay_sayfalari/urun_detay_sf/detay.dart';

class ProfilSayfasi extends StatefulWidget {
  const ProfilSayfasi({super.key});

  @override
  State<ProfilSayfasi> createState() => _ProfilSayfasiState();
}

class _ProfilSayfasiState extends State<ProfilSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/images/k_logo.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            UserMailControl_profile(),
            style: GoogleFonts.getFont(
              "Poppins",
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            ProfilDuzenleme().hakkinda.toString()
          ),
          const SizedBox(
            height: 15,
          ),
          //const Icon(Icons.border_color),
          InkWell(
              onTap: () {
                showModalBottomSheet(
                  
                   // shape: const StadiumBorder(),
                    context: context,
                    builder: (BuildContext context) {
                      return ProfilDuzenleme();
                      //Center(child: Text("Buraya ürünleriniz gelecek"),);
                    });
              },
              child: const Icon(Icons.brush)),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    width: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.grey,
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey[400],
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ListViewKullanimii()));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.people,
                              size: 20,
                              color: Colors.black,
                            ),
                            Text(
                              "123 Takipçi",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                    width: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.grey,
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey[400],
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ListViewKullanimi()));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.people_alt,
                              size: 20,
                              color: Colors.black,
                            ),
                            Text(
                              "235 Takip",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    width: 80,
                    margin: const EdgeInsets.symmetric(horizontal: 80),
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor:
                            const Color.fromRGBO(11, 181, 189, 0.8),
                        shadowColor: Colors.white,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const TakasPuanMagazasi()));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              "Takas Puan Mağazası",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    width: 80,
                    margin: const EdgeInsets.symmetric(horizontal: 80),
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor:
                            const Color.fromRGBO(11, 181, 189, 0.8),
                        shadowColor: Colors.white,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SizeGelenTeklifler()));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              "Size Gelen Teklifler",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const GecmisTakaslariniz()));
                },
                child: Container(
                  height: 300,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                const Center(
                                  child: Text(
                                    'Geçmiş Takaslarınız',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Detay(
                                      imgPath: 'lib/images/modelgrid1.jpeg')));
                            },
                            child: Hero(
                              tag: 'lib/images/modelgrid1.jpeg',
                              child: Container(
                                height: 200,
                                width:
                                    (MediaQuery.of(context).size.width - 50) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        'lib/images/modelgrid1.jpeg',
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Detay(
                                          imgPath:
                                              'lib/images/modelgrid2.jpeg')));
                                },
                                child: Hero(
                                  tag: 'lib/images/modelgrid2.jpeg',
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'lib/images/modelgrid2.jpeg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Detay(
                                          imgPath:
                                              'lib/images/modelgrid3.jpeg')));
                                },
                                child: Hero(
                                  tag: 'lib/images/modelgrid3.jpeg',
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'lib/images/modelgrid3.jpeg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const YayindaOlanUrunleriniz()));
                },
                child: Container(
                  height: 300,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                const Center(
                                  child: Text(
                                    'Yayında Olan Ürünleriniz',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Detay(
                                      imgPath: 'lib/images/modelgrid1.jpeg')));
                            },
                            child: Hero(
                              tag: 'lib/images/modelgrid1.jpeg',
                              child: Container(
                                height: 200,
                                width:
                                    (MediaQuery.of(context).size.width - 50) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        'lib/images/modelgrid1.jpeg',
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Detay(
                                          imgPath:
                                              'lib/images/modelgrid2.jpeg')));
                                },
                                child: Hero(
                                  tag: 'lib/images/modelgrid2.jpeg',
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'lib/images/modelgrid2.jpeg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Detay(
                                          imgPath:
                                              'lib/images/modelgrid3.jpeg')));
                                },
                                child: Hero(
                                  tag: 'lib/images/modelgrid3.jpeg',
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'lib/images/modelgrid3.jpeg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Gonderileriniz()));
                },
                child: Container(
                  height: 170,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                const Center(
                                  child: Text(
                                    'Gönderileriniz',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                    "Burada paylaştığınız gönderileriniz gösterilecektir."),
                                const SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Foto_aktar()));
                                  },
                                  child: const Text(
                                      "Yeni bir gönderi paylaşmak için tıklayınız."),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const TakasZinciriniz()));
                },
                child: Container(
                  height: 170,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                const Center(
                                  child: Text(
                                    'Takas Zincirleriniz',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                    "Burada paylaştığınız takas zincirleriniz gösterilecektir."),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "En fazla zincir sayınız: 0",
                                  style: TextStyle(color: Colors.blueGrey),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 150,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                const Center(
                                  child: Text(
                                    'Hesap Bilgileri',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                    "Burada Hesap Bilgileriniz Görüntülenecektir."),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Takas Puanınız: 0",
                                  style: TextStyle(color: Colors.blueGrey),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.grey,
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey[400],
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const BegendiginUrunler()));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.red,
                            ),
                            Text(
                              "Beğendiğiniz Ürünler",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
              Expanded(
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 1),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.grey,
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey[400],
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const BegenilenPaylasimlar()));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.red,
                            ),
                            Text(
                              "Beğendiğiniz Paylaşımlar",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
