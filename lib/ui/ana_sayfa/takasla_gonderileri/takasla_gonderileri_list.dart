import 'dart:math';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:Swapla/detay_sayfalari/Kategori/etiket_kategorileri/bayan_giyim.dart';
import 'package:Swapla/detay_sayfalari/Kategori/etiket_kategorileri/elbise.dart';
import 'package:Swapla/detay_sayfalari/urun_detay_sf/detay_yeni.dart';
import 'package:Swapla/ui/profil/diger_profiller.dart';

import '../../../detay_sayfalari/yorum_yapma/yeni_yorum.dart';

class TakaslaGonderileriList extends StatefulWidget {
  const TakaslaGonderileriList({super.key});

  @override
  State<TakaslaGonderileriList> createState() => _TakaslaGonderileriListState();
}

class _TakaslaGonderileriListState extends State<TakaslaGonderileriList> {
  @override
  Widget build(BuildContext context) {
    return //Cards
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
                                  image: AssetImage('lib/images/model1.jpeg'),
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
                    'Sadece birkaç kez kullandığım elbisemi takas etmek istiyorum. Elbisem siyah renkli olduğundan giyildiğinde oldukça şık göstermektedir. Tercihen çanta ile takas edeceğimi söylemek isterim.',
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
                              builder: (context) => const Detayi()));
                        },
                        child: Hero(
                          tag: const NetworkImage('https://picsum.photos/200'),
                          child: Container(
                            height: 200,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
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
                      Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Detayi()));
                            },
                            child: Hero(
                              tag: const NetworkImage(
                                  'https://picsum.photos/200/300'),
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      //image: AssetImage(widget.imgPath), fit: BoxFit.cover)
                                      image: true
                                          ? NetworkImage(
                                              'https://picsum.photos/200/300')
                                          : AssetImage('images/a.png')
                                              as ImageProvider,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Detayi()));
                            },
                            child: Hero(
                              tag: const NetworkImage(
                                  'https://loremflickr.com/320/240'),
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      //image: AssetImage(widget.imgPath), fit: BoxFit.cover)
                                      image: true
                                          ? NetworkImage(
                                              'https://loremflickr.com/320/240')
                                          : AssetImage('images/a.png')
                                              as ImageProvider,
                                      fit: BoxFit.cover,
                                    )),
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
                            color: Colors.grey.withOpacity(0.2)),
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
                                  color: Colors.grey),
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
                            color: Colors.grey.withOpacity(0.2)),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const EtiketElbise()));
                            },
                            child: const Text(
                              '# Elbise',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.grey),
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
                          return InkWell(
                            onTap: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text('Gönderi olarak paylaşıldı'),
                              ));
                            },
                            child: Icon(
                              Icons.reply,
                              color: isLiked ? Colors.brown : Colors.grey,
                              size: 25,
                            ),
                          );
                        },
                        likeCount: Random().nextInt(9999),
                        countBuilder: (int? count, bool isLiked, String text) {
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
                                return TestMe();
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
                        countBuilder: (int? count, bool isLiked, String text) {
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
                                var color = isLiked ? Colors.red : Colors.grey;
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
                                  image: AssetImage('lib/images/model2.jpeg'),
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
                                'Fatma SEVİNÇ',
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
                              '1 saat önce',
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
                    'This official website features a ribbed knit zipper jacket that is'
                    'modern and stylish. It looks very temparament and is recommend to friends',
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
                              builder: (context) => const Detayi()));
                        },
                        child: Hero(
                          tag: const NetworkImage(
                              'https://picsum.photos/200/500'),
                          child: Container(
                            height: 200,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  //image: AssetImage(widget.imgPath), fit: BoxFit.cover)
                                  image: true
                                      ? NetworkImage(
                                          'https://picsum.photos/200/500')
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
                      Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Detayi()));
                            },
                            child: Hero(
                              tag: const NetworkImage(
                                  'https://picsum.photos/200/400'),
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      //image: AssetImage(widget.imgPath), fit: BoxFit.cover)
                                      image: true
                                          ? NetworkImage(
                                              'https://picsum.photos/200/400')
                                          : AssetImage('images/a.png')
                                              as ImageProvider,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Detayi()));
                            },
                            child: Hero(
                              tag: const NetworkImage(
                                  'https://loremflickr.com/320/340'),
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      //image: AssetImage(widget.imgPath), fit: BoxFit.cover)
                                      image: true
                                          ? NetworkImage(
                                              'https://loremflickr.com/320/340')
                                          : AssetImage('images/a.png')
                                              as ImageProvider,
                                      fit: BoxFit.cover,
                                    )),
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
                            color: Colors.grey.withOpacity(0.2)),
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
                                  color: Colors.grey),
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
                            color: Colors.grey.withOpacity(0.2)),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const EtiketElbise()));
                            },
                            child: const Text(
                              '# Elbise',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.grey),
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
                          return InkWell(
                            onTap: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text('Gönderi olarak paylaşıldı'),
                              ));
                            },
                            child: Icon(
                              Icons.reply,
                              color: isLiked ? Colors.brown : Colors.grey,
                              size: 25,
                            ),
                          );
                        },
                        likeCount: Random().nextInt(9999),
                        countBuilder: (int? count, bool isLiked, String text) {
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
                                return TestMe();
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
                        countBuilder: (int? count, bool isLiked, String text) {
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
                                var color = isLiked ? Colors.red : Colors.grey;
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
    );
  }
}
