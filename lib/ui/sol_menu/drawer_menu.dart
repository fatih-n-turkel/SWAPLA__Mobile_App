import 'package:Swapla/constants/firebase_sabit.dart';
import 'package:flutter/material.dart';
import 'package:Swapla/ui/sol_menu/signUp_view.dart';
import 'package:Swapla/ui/sol_menu/sss.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: Colors.brown,
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('Swapla'),
            accountEmail: UserMailControl(),
            currentAccountPicture:
                //Image.network('https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png'),
                const CircleAvatar(
              backgroundImage: AssetImage('lib/images/k_logo.png'),
            ),
            otherAccountsPictures: const <Widget>[
              CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text('AK'),
              ),
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('EA'),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUpView()));
                  },
                  splashColor: const Color.fromRGBO(11, 181, 189, 0.8),
                  child: const ListTile(
                    leading: Icon(Icons.assignment_ind_outlined),
                    title: Text('Giriş Yap'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Sss()));
                  },
                  splashColor: const Color.fromRGBO(11, 181, 189, 0.8),
                  child: const ListTile(
                    leading: Icon(Icons.home),
                    title: Text('SSS'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                const AboutListTile(
                  applicationName: 'Lisanslar',
                  applicationIcon: Icon(Icons.save),
                  applicationVersion: '2.0',
                  applicationLegalese: 'asdasdasd',
                  icon: Icon(Icons.keyboard),
                  aboutBoxChildren: <Widget>[
                    Text('Child 1'),
                    Text('Child 2'),
                    Text('Child 3'),
                  ],
                  child: Text('ABOUT US'),
                ),
                const Divider(),
                const ListTile(
                  //leading: Icon(Icons.home),
                  title: Center(child: Text('Developed by FNT')),
                  //trailing: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
