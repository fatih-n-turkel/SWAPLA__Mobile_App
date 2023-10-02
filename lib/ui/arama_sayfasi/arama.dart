import 'package:flutter/material.dart';
import 'package:Swapla/ui/arama_sayfasi/kesfet.dart';



class AramaSayfasi extends StatefulWidget {

  const AramaSayfasi(Key k) : super(key:k);


  @override
  AramaSayfasiState createState() {
    return  AramaSayfasiState();
  }
}

class AramaSayfasiState extends State<AramaSayfasi> {
  @override
  Widget build(BuildContext context) {
     return SearchScreen();

  }
}
