import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewKullanimii extends StatefulWidget {
  const ListViewKullanimii({Key? key}) : super(key: key);

  @override
  State<ListViewKullanimii> createState() => _ListViewKullanimiiState();
}

class _ListViewKullanimiiState extends State<ListViewKullanimii> {
  List<Ogrenci> tumOgrenciler = List.generate(
      123,
      (index) => Ogrenci(
          index + 1, "Kişi ${index + 1}", "${index + 1} numaralı kullanıcı"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Takipçi",
          style: GoogleFonts.getFont("Kalam",
              fontSize: 35, color: const Color.fromRGBO(11, 181, 189, 0.8)),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          var oankiOgrenci = tumOgrenciler[index];
          return Card(
            color: index % 2 == 0
                ? const Color.fromARGB(255, 234, 234, 234)
                : const Color.fromARGB(255, 210, 208, 208),
            child: ListTile(
              /*onTap: () {
                if(index % 2 == 0){
                  EasyLoading.instance.backgroundColor = Color.fromARGB(255, 60, 60, 60);
                  EasyLoading.instance.textColor = Color.fromARGB(255, 255, 255, 255);
                }else{
                  EasyLoading.instance.backgroundColor = Color.fromARGB(255, 230, 227, 227);
                  EasyLoading.instance.textColor = Color.fromARGB(255, 0, 0, 0);
                }
                //print("Tıklandı. $index");
                EasyLoading.showToast("Eleman tıklandı.",
                    duration: const Duration(
                      seconds: 3,
                    ),
                    dismissOnTap: true,
                    toastPosition: EasyLoadingToastPosition.bottom);
              },
              */
              onTap: () {
                _alertDialogIslemleri(context, oankiOgrenci);
              },
              /*onLongPress: (){
                _alertDialogIslemleri(context);
              },
              */
              title: Text(
                tumOgrenciler[index].isim,
              ),
              subtitle: Text(oankiOgrenci.soyisim),
              leading: CircleAvatar(
                foregroundColor: Colors.black,
                backgroundColor:
                    //Colors.accents[Random().nextInt(Colors.accents.length)],
                    Colors.white,
                child: Text(
                  oankiOgrenci.id.toString(),
                ),
              ),
            ),
          );
        },
        itemCount: tumOgrenciler.length,
        separatorBuilder: (context, index) {
          var yeniIndex = index + 1;
          if (yeniIndex % 5 == 0) {
            return const Divider(
              thickness: 2,
              color: Colors.black,
            );
          }
          return const SizedBox();
        },
      ),
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map(
            (Ogrenci ogr) => ListTile(
              title: Text(ogr.isim),
              subtitle: Text(ogr.soyisim),
              leading: CircleAvatar(
                backgroundColor:
                    Colors.accents[Random().nextInt(Colors.accents.length)],
                child: Text(
                  ogr.id.toString(),
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    //showDialog(context: context, builder: builder) //android için
    //showCupertinoDialog(context: context, builder: builder) //android için
    showDialog(
        barrierDismissible:
            false, //boş bir ekrana dokununca pencere kapanmasın diye
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(secilen.toString()),
            content: SingleChildScrollView(
                //child: Text("Fatih'in Denemesi" * 20)
                child: ListBody(
              children: [
                Text("FATİH" * 113),
                Text("NAİM" * 200),
                Text("TÜRKEL" * 234)
              ],
            )),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(
                            context); //bu, butona tıklandığında bir önceki ekrana dönülmesini sağlar
                      },
                      child: const Text("KAPAT")),
                  TextButton(onPressed: () {}, child: const Text("TAMAM")),
                ],
              )
            ],
          );
        }); //ios için
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);

  @override
  String toString() {
    // TODO: implement toString
    return "İsim: $isim Soyisim: $soyisim ID: $id";
  }
}
