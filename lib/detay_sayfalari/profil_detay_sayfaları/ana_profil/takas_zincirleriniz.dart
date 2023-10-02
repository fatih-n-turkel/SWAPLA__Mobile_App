import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:Swapla/detay_sayfalari/Kategori/etiket_kategorileri/bayan_giyim.dart';
import 'package:Swapla/detay_sayfalari/Kategori/etiket_kategorileri/elbise.dart';

import '../../../detay_sayfalari/urun_detay_sf/detay.dart';
import '../../../detay_sayfalari/urun_detay_sf/takas_urunleriniz.dart';
import '../../../detay_sayfalari/yorum_yapma/yorum.dart';
import '../../../ui/profil/diger_profiller.dart';

class TakasZinciriniz extends StatefulWidget {
  const TakasZinciriniz({super.key});

  @override
  State<TakasZinciriniz> createState() => _TakasZincirinizState();
}

class _TakasZincirinizState extends State<TakasZinciriniz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 50,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "Takas Zincirleriniz",
            style: GoogleFonts.getFont("Poppins",
                fontSize: 30, color: const Color.fromRGBO(11, 181, 189, 0.8)),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                borderRadius: BorderRadius.circular(16),
                elevation: 4,
                //color: Colors.blue.shade300,
                child: Container(
                  height: 500,
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
                                      image:
                                          AssetImage('lib/images/model1.jpeg'),
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
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DigerProfilSayfasi()));
                                  },
                                  child: const Text(
                                    'Gökçe YILDIZ',
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
                                  '34 dakika önce',
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
                                      child: Text("Engelle"),
                                    ),
                                    const PopupMenuItem<int>(
                                      value: 1,
                                      child: Text("Bildir"),
                                    ),
                                    const PopupMenuItem<int>(
                                      value: 2,
                                      child: Text("Birdaha görmek istemiyorum"),
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
                        'Eğer takasladan bir ürün takasladıysanız ve aynı ürünü tekrar takasla üzerinden takaslayabildiyseniz tebrikler, artık siz de takas zincirine katıldınız.',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Montserrat',
                            color: Colors.grey),
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
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 25,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2)),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const EtiketBayanGiyim()));
                                },
                                child: const Text(
                                  '# Bayan Giyim',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      color: Colors.brown),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 25,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2)),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const EtiketElbise()));
                                },
                                child: const Text(
                                  '# Elbise',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      color: Colors.brown),
                                ),
                              ),
                            ),
                          ),
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
                                          return const TakasUrunleriniz();
                                          //Center(child: Text("Buraya ürünleriniz gelecek"),);
                                        });
                                  },
                                  child: const Text(
                                    'Teklif Ver',
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
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          LikeButton(
                            size: 30,
                            circleColor: const CircleColor(
                                start: Colors.brown, end: Colors.brown),
                            bubblesColor: const BubblesColor(
                              dotPrimaryColor: Colors.brown,
                              dotSecondaryColor: Colors.brown,
                            ),
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                Icons.reply,
                                color: isLiked ? Colors.brown : Colors.grey,
                                size: 25,
                              );
                            },
                            likeCount: Random().nextInt(9999),
                            countBuilder:
                                (int? count, bool isLiked, String text) {
                              var color = isLiked ? Colors.brown : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "love",
                                  style: TextStyle(color: color),
                                );
                              } else {
                                result = Text(
                                  text,
                                  style: TextStyle(color: color),
                                );
                              }
                              return result;
                            },
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          LikeButton(
                            onTap: (isLiked) {
                              return showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const YorumSayfasi();
                                    //Center(child: Text("Buraya ürünleriniz gelecek"),);
                                  });
                            },
                            size: 30,
                            circleColor: const CircleColor(
                                start: Colors.brown, end: Colors.brown),
                            bubblesColor: const BubblesColor(
                              dotPrimaryColor: Colors.brown,
                              dotSecondaryColor: Colors.brown,
                            ),
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                Icons.comment,
                                color: isLiked ? Colors.brown : Colors.grey,
                                size: 25,
                              );
                            },
                            likeCount: Random().nextInt(9999),
                            countBuilder:
                                (int? count, bool isLiked, String text) {
                              var color = isLiked ? Colors.brown : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "love",
                                  style: TextStyle(color: color),
                                );
                              } else {
                                result = Text(
                                  text,
                                  style: TextStyle(color: color),
                                );
                              }
                              return result;
                            },
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 235,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                LikeButton(
                                  size: 30,
                                  circleColor: const CircleColor(
                                      start: Colors.red, end: Colors.red),
                                  bubblesColor: const BubblesColor(
                                    dotPrimaryColor: Colors.red,
                                    dotSecondaryColor: Colors.red,
                                  ),
                                  likeBuilder: (bool isLiked) {
                                    return Icon(
                                      Icons.favorite,
                                      color: isLiked ? Colors.red : Colors.grey,
                                      size: 25,
                                    );
                                  },
                                  likeCount: Random().nextInt(9999),
                                  countBuilder:
                                      (int? count, bool isLiked, String text) {
                                    var color =
                                        isLiked ? Colors.red : Colors.grey;
                                    Widget result;
                                    if (count == 0) {
                                      result = Text(
                                        "love",
                                        style: TextStyle(color: color),
                                      );
                                    } else {
                                      result = Text(
                                        text,
                                        style: TextStyle(color: color),
                                      );
                                    }
                                    return result;
                                  },
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
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
                child: Container(
                  height: 500,
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
                                      image:
                                          AssetImage('lib/images/model3.jpeg'),
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
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DigerProfilSayfasi()));
                                  },
                                  child: const Text(
                                    'Hatice TEPE',
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
                                      child: Text("Engelle"),
                                    ),
                                    const PopupMenuItem<int>(
                                      value: 1,
                                      child: Text("Bildir"),
                                    ),
                                    const PopupMenuItem<int>(
                                      value: 2,
                                      child: Text("Birdaha görmek istemiyorum"),
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
                        'Eğer takasladan bir ürün takasladıysanız ve aynı ürünü tekrar takasla üzerinden takaslayabildiyseniz tebrikler, artık siz de takas zincirine katıldınız.',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Montserrat',
                            color: Colors.grey),
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
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 25,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2)),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const EtiketBayanGiyim()));
                                },
                                child: const Text(
                                  '# Bayan Giyim',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      color: Colors.brown),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 25,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2)),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const EtiketElbise()));
                                },
                                child: const Text(
                                  '# Elbise',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      color: Colors.brown),
                                ),
                              ),
                            ),
                          ),
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
                                          return const TakasUrunleriniz();
                                          //Center(child: Text("Buraya ürünleriniz gelecek"),);
                                        });
                                    //return debugPrint("basıldı");
                                  },
                                  child: const Text(
                                    'Teklif Ver',
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
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          LikeButton(
                            size: 30,
                            circleColor: const CircleColor(
                                start: Colors.brown, end: Colors.brown),
                            bubblesColor: const BubblesColor(
                              dotPrimaryColor: Colors.brown,
                              dotSecondaryColor: Colors.brown,
                            ),
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                Icons.reply,
                                color: isLiked ? Colors.brown : Colors.grey,
                                size: 25,
                              );
                            },
                            likeCount: Random().nextInt(9999),
                            countBuilder:
                                (int? count, bool isLiked, String text) {
                              var color = isLiked ? Colors.brown : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "love",
                                  style: TextStyle(color: color),
                                );
                              } else {
                                result = Text(
                                  text,
                                  style: TextStyle(color: color),
                                );
                              }
                              return result;
                            },
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          LikeButton(
                            onTap: (isLiked) {
                              return showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const YorumSayfasi();
                                    //Center(child: Text("Buraya ürünleriniz gelecek"),);
                                  });
                            },
                            size: 30,
                            circleColor: const CircleColor(
                                start: Colors.brown, end: Colors.brown),
                            bubblesColor: const BubblesColor(
                              dotPrimaryColor: Colors.brown,
                              dotSecondaryColor: Colors.brown,
                            ),
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                Icons.comment,
                                color: isLiked ? Colors.brown : Colors.grey,
                                size: 25,
                              );
                            },
                            likeCount: Random().nextInt(9999),
                            countBuilder:
                                (int? count, bool isLiked, String text) {
                              var color = isLiked ? Colors.brown : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "love",
                                  style: TextStyle(color: color),
                                );
                              } else {
                                result = Text(
                                  text,
                                  style: TextStyle(color: color),
                                );
                              }
                              return result;
                            },
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 235,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                LikeButton(
                                  size: 30,
                                  circleColor: const CircleColor(
                                      start: Colors.red, end: Colors.red),
                                  bubblesColor: const BubblesColor(
                                    dotPrimaryColor: Colors.red,
                                    dotSecondaryColor: Colors.red,
                                  ),
                                  likeBuilder: (bool isLiked) {
                                    return Icon(
                                      Icons.favorite,
                                      color: isLiked ? Colors.red : Colors.grey,
                                      size: 25,
                                    );
                                  },
                                  likeCount: Random().nextInt(9999),
                                  countBuilder:
                                      (int? count, bool isLiked, String text) {
                                    var color =
                                        isLiked ? Colors.red : Colors.grey;
                                    Widget result;
                                    if (count == 0) {
                                      result = Text(
                                        "love",
                                        style: TextStyle(color: color),
                                      );
                                    } else {
                                      result = Text(
                                        text,
                                        style: TextStyle(color: color),
                                      );
                                    }
                                    return result;
                                  },
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
