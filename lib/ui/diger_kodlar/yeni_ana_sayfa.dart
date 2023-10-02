import 'package:flutter/material.dart';

import '../../models/veri_model.dart';



class AanaSayfa extends StatefulWidget {

  const AanaSayfa(Key k) : super(key:k);


  @override
  AanaSayfaState createState() {
    return  AanaSayfaState();
  }
}

class AanaSayfaState extends State<AanaSayfa> {
  late List<Veri> tumVeriler;

  @override
  void initState() {
 
    super.initState();
    tumVeriler = [
      Veri('Biz Kimiz', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('Biz Neredeyiz', 'Biz neredeyiz içeriği buraya gelecek', false),
      Veri('Misyonumuz', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('Vizyonumuz', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('İletişim', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('İletişim', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('İletişim', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('İletişim', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('İletişim', 'Biz kimizin içeriği buraya gelecek', false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey('$index'),
          title: Text(tumVeriler[index].baslik),
          initiallyExpanded: tumVeriler[index].expanded,
          children: <Widget>[
            Container(
              color:
                  index % 2 == 0 ? Colors.red.shade200 : Colors.yellow.shade300,
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(tumVeriler[index].icerik),
              ),
            )
          ],
        );
      },
      itemCount: tumVeriler.length,
    );
  }
}
