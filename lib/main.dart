import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Swapla/ui/diger_kodlar/tabs.dart';
import 'package:Swapla/ui/diger_kodlar/yeni_ana_sayfa.dart';
import 'package:Swapla/ui/mesajlar/presentation/chats_screen/chats_screen.dart';
import 'package:Swapla/ui/ana_sayfa/ana_sayfa.dart';
import 'package:Swapla/ui/arama_sayfasi/arama.dart';
import 'package:Swapla/ui/sol_menu/drawer_menu.dart';
import 'package:Swapla/ui/urun_yukleme/page_view.dart';
import 'package:Swapla/ui/profil/profil.dart';

// Import the generated file
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const FlutterDersleri());
}

class FlutterDersleri extends StatelessWidget {
  const FlutterDersleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      fontFamily: 'Genel',
      primarySwatch: Colors.blueGrey,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swapla',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme
            .copyWith(secondary: const Color.fromRGBO(11, 181, 189, 0.8)),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;
  late List<Widget> tumSayfalar;
  late AnaSayfa sayfaAna;
  late AanaSayfa sayfaaAna;
  late ProfilSayfasi profilSf;
  late AramaSayfasi sayfaArama;
  late PageViewOrnek pageViewOrnek;

  var keyAnaSayfa = const PageStorageKey('key_ana_sayfa');
  var keyAanaSayfa = const PageStorageKey('key_aana_sayfa');
  var keyArama = const PageStorageKey('key_arama_sayfa');

  @override
  void initState() {
    super.initState();
    //sayfaaAna = AanaSayfa(keyAanaSayfa);
    profilSf = const ProfilSayfasi();
    sayfaAna = AnaSayfa(keyAnaSayfa);
    sayfaArama = AramaSayfasi(keyArama);
    pageViewOrnek = const PageViewOrnek();
    tumSayfalar = [sayfaAna, sayfaArama, pageViewOrnek, profilSf];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: const Color.fromRGBO(11, 181, 189, 0.8).withOpacity(0.6)),
        title: Center(
          child: Text(
            'Swapla',
            style: GoogleFonts.getFont("Playball",
                fontSize: 45, color: const Color.fromRGBO(11, 181, 189, 0.8)),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.chat_outlined),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChatsScreen()));
              },
              color: const Color.fromRGBO(11, 181, 189, 0.8).withOpacity(0.6)),
        ],
        actionsIconTheme:
            const IconThemeData(color: Color.fromRGBO(11, 181, 189, 0.8)),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: secilenMenuItem <= tumSayfalar.length - 1
          ? tumSayfalar[secilenMenuItem]
          : tumSayfalar[0],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
          canvasColor: Colors.cyan.shade100,
          primaryColor: const Color.fromRGBO(11, 181, 189, 0.8)),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromRGBO(11, 181, 189, 0.8)),
              label: 'Ana Sayfa',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.search, color: Color.fromRGBO(11, 181, 189, 0.8)),
              //activeIcon:
              //Icon(Icons.call, color: Color.fromRGBO(11, 181, 189, 0.8)),
              label: 'Keşfet',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Color.fromRGBO(11, 181, 189, 0.8)),
              label: 'Ekle',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box,
                  color: Color.fromRGBO(11, 181, 189, 0.8)),
              label: 'Profil',
              backgroundColor: Colors.white),
/*
          BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_num,
                  color: Color.fromRGBO(11, 181, 189, 0.8)),
              label: 'Premium',
              backgroundColor: Colors.white
              //backgroundColor: Colors.black
              ),
              */
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: secilenMenuItem,
        onTap: (index) {
          setState(() {
            secilenMenuItem = index;
            if (index == 4) {
              Navigator.of(context)
                  .push(
                      MaterialPageRoute(builder: (context) => const TabOrnek()))
                  .then((bb) {
                secilenMenuItem = 0;
              });
            }
          });
        },
      ),
    );
  }
}
