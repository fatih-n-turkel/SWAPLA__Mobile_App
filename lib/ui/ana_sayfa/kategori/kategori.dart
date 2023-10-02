import 'package:flutter/material.dart';
import 'package:Swapla/detay_sayfalari/Kategori/Kategori_list_detay/Kategori_erkek_tumunu_gor.dart';

import '../../../detay_sayfalari/Kategori/Kategori_list_detay/Kategori_kadin_tumunu_gor.dart';
import '../../../detay_sayfalari/Kategori/Kategori_list_detay/Kategori_aksesuar_tumunu_gor.dart';
import '../../../detay_sayfalari/Kategori/Kategori_list_detay/Kategori_arac_tumunu_gor.dart';
import '../../../detay_sayfalari/Kategori/Kategori_list_detay/Kategori_elektronik_tumunu_gor.dart';
import '../../../detay_sayfalari/Kategori/Kategori_list_detay/Kategori_giyim_tumunu_gor.dart';

class Kategori extends StatefulWidget {
  Kategori({Key? key}) : super(key: key);

  @override
  State<Kategori> createState() => _KategoriState();
}
 
class _KategoriState extends State<Kategori> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            //color: Colors.blue.shade300,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const KategoriErkekTumunuGor()));
                  },
                  child: Column(
                    children: [
                      listeElemani(
                          'lib/images/tisort.png', 'lib/images/chanellogo.jpg'),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(11, 181, 189, 0.8)
                                .withOpacity(1)),
                        child: const Center(
                          child: Text(
                            'Erkek',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const KategoriKadinTumunuGor()));
                  },
                  child: Column(
                    children: [
                      listeElemani('lib/images/elbise.png',
                          'lib/images/louisvuitton.jpg'),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(11, 181, 189, 0.8)
                                .withOpacity(1)),
                        child: const Center(
                          child: Text(
                            'Kadın',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const KategoriGiyimTumunuGor()));
                  },
                  child: Column(
                    children: [
                      listeElemani('lib/images/ayakkabi.png',
                          'lib/images/chloelogo.png'),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(11, 181, 189, 0.8)
                                .withOpacity(1)),
                        child: const Center(
                          child: Text(
                            'Giyim',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const KategoriElektronikTumunuGor()));
                  },
                  child: Column(
                    children: [
                      listeElemani(
                          'lib/images/pc.png', 'lib/images/chanellogo.jpg'),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(11, 181, 189, 0.8)
                                .withOpacity(1)),
                        child: const Center(
                          child: Text(
                            'Elektronik',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const KategoriAksesuarTumunuGor()));
                  },
                  child: Column(
                    children: [
                      listeElemani('lib/images/aksesuar.png',
                          'lib/images/louisvuitton.jpg'),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(11, 181, 189, 0.8)
                                .withOpacity(1)),
                        child: const Center(
                          child: Text(
                            'Aksesuar',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const KategoriAracTumunuGor()));
                  },
                  child: Column(
                    children: [
                      listeElemani(
                          'lib/images/a.png', 'lib/images/chloelogo.png'),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(11, 181, 189, 0.8)
                                .withOpacity(1)),
                        child: const Center(
                          child: Text(
                            'Araç',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
              ],
            ),
          );
  }
}

Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        /*
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(11, 181, 189, 0.8).withOpacity(1)),
          child: const Center(
            child: Text(
              'Kategori',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
            ),
          ),
        ),
        */
      ],
    );
  }