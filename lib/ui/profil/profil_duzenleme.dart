import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:image_picker/image_picker.dart';

import '../../constants/firebase_sabit.dart';

import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';
import 'package:image_picker/image_picker.dart';

class ProfilDuzenleme extends StatefulWidget {
  ProfilDuzenleme({super.key});
  String kullaniciAdi = "";
  String hakkinda = "Hakkında kısmı";
  @override
  State<ProfilDuzenleme> createState() => _ProfilDuzenlemeState();
}

class _ProfilDuzenlemeState extends State<ProfilDuzenleme> {
    MediaType _mediaType = MediaType.image;

  String? imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: const [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('lib/images/k_logo.png'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  pickMedia(ImageSource.gallery);
                },
                child: const Text(
                  "Profil Resmini Değiştir",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Kullanıcı Adını Değiştir",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: UserMailControl_profile(),
                  ),
                ),
              ),
              //kullanıcı adı input
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Hakkınızda Kısmını Değiştir",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: ProfilDuzenleme().hakkinda.toString()),
                ),
              ),
              //hakkınızda kısmı input
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Kaydet"),style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor:
                            const Color.fromRGBO(11, 181, 189, 0.8),
                        shadowColor: Colors.white,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
              ))
            ],
          ),
        ));
  }
    void pickMedia(ImageSource source) async {
    XFile? file;
    if (_mediaType == MediaType.image) {
      file = await ImagePicker().pickImage(source: source);
    } else {
      file = await ImagePicker().pickVideo(source: source);
    }
    if (file != null) {
      imagePath = file.path;
      if (_mediaType == MediaType.video) {
        imagePath = await VideoThumbnail.thumbnailFile(
            video: file.path,
            imageFormat: ImageFormat.PNG,
            quality: 100,
            maxWidth: 300,
            maxHeight: 300);
      }
      setState(() {});
    }
  }
}
enum MediaType {
  image,
  video;
}