import 'package:flutter/material.dart';

class TakasPuanMagazasi extends StatefulWidget {
  const TakasPuanMagazasi({super.key});

  @override
  State<TakasPuanMagazasi> createState() => _TakasPuanMagazasiState();
}

class _TakasPuanMagazasiState extends State<TakasPuanMagazasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.white,),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          const Text("Takas Puanınız: 0"),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.only(left: 80.0),
            width: 400,
            height: 20,
            child: const Text("1 günlük premium üyelik: 100 Takas Puan"),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('Satın alındı'),
            ));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              height: 20,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(11, 181, 189, 0.8).withOpacity(1)),
              child: const Center(
                child: Text(
                  'Satın Al',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
