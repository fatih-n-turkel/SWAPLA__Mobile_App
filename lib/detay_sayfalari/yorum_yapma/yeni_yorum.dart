import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';

import '../../ui/profil/diger_profiller.dart';

class TestMe extends StatefulWidget {
  @override
  _TestMeState createState() => _TestMeState();
}

class _TestMeState extends State<TestMe> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Ahmet ŞİMŞEK',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Çok güzel bir ürün, beğendim. Takaslamayı düşünebilirim.'
    },
    {
      'name': 'Nazlı GÜLER',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Mükemmel bir ürün ama biraz eskimiş sanki'
    },
    {
      'name': 'Fatih Naim TÜRKEL',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Aynısı bende de var 😂'
    },
    {
      'name': 'Zeynep YILMAZ',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Ne verirsem bu ürünü bana bırakırsın?'
    },
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  //print("Comment Clicked");
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DigerProfilSayfasi()));
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(data[i]['pic'] + "$i")),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Yorumlar",
          style:
              TextStyle(color: Color.fromRGBO(11, 181, 189, 0.8), fontSize: 25),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: CommentBox(
          userImage:
              "https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400",
          labelText: 'Yorumunuzu yazınız..',
          withBorder: false,
          errorText: 'Lütfen yorumunuzu yazınız!',
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': 'Admin Hesabı',
                  'pic':
                      'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                  'message': commentController.text
                };
                filedata.insert(0, value);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: const Color.fromRGBO(11, 181, 189, 0.8),
          textColor: Colors.white,
          sendWidget:
              const Icon(Icons.send_sharp, size: 30, color: Colors.white),
          child: commentChild(filedata),
        ),
      ),
    );
  }
}
