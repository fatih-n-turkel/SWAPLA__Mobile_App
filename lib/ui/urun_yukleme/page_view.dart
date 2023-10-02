import 'package:flutter/material.dart';
import 'package:Swapla/ui/urun_yukleme/foto_aktar.dart';

class PageViewOrnek extends StatefulWidget {
  const PageViewOrnek({Key? key}) : super(key: key);

  @override
  _PageViewOrnekState createState() => _PageViewOrnekState();
}

class _PageViewOrnekState extends State<PageViewOrnek> {


  @override
  Widget build(BuildContext context) {
    return Foto_aktar();
  }
}
