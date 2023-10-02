import 'package:flutter/material.dart';

import '../../detay_sayfalari/urun_detay_sf/detay.dart';


class TabOrnek extends StatefulWidget {
  const TabOrnek({Key? key}) : super(key: key);

  @override
  _TabOrnekState createState() => _TabOrnekState();
}

class _TabOrnekState extends State<TabOrnek>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black, elevation: 0.0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            "lib/images/pre_logo_uc.png",
          ))),
        ),
        //title: const Text('Tab Kullanımı'),
        //bottom: tabBarimBottom(),
      ),
      //bottomNavigationBar: tabBarimBottom(),
      body: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          //body: TabBarView(
          //controller: tabController,
          children: <Widget>[
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
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage('lib/images/model1.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Gökçe YILDIZ',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
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
                          const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 22,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Daha önce siyah elbisemle takas ettiğim çantamı şimdi de bluz ile takas ettim, artık ben de Takas Zincirinde varım. İlgilenenler bluz takası için iletişime geçebilirler.',
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
                                  builder: (context) => const Detay(
                                      imgPath: 'lib/images/modelgrid1.jpeg')));
                            },
                            child: Hero(
                              tag: 'lib/images/modelgrid1.jpeg',
                              child: Container(
                                height: 200,
                                width:
                                    (MediaQuery.of(context).size.width - 50) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        'lib/images/modelgrid1.jpeg',
                                      ),
                                      fit: BoxFit.cover),
                                ),
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
                                      builder: (context) => const Detay(
                                          imgPath:
                                              'lib/images/modelgrid2.jpeg')));
                                },
                                child: Hero(
                                  tag: 'lib/images/modelgrid2.jpeg',
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'lib/images/modelgrid2.jpeg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Detay(
                                          imgPath:
                                              'lib/images/modelgrid3.jpeg')));
                                },
                                child: Hero(
                                  tag: 'lib/images/modelgrid3.jpeg',
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'lib/images/modelgrid3.jpeg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
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
                                color: Colors.brown.withOpacity(0.2)),
                            child: const Center(
                              child: Text(
                                '# Bayan Giyim',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.brown),
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
                                color: Colors.brown.withOpacity(0.2)),
                            child: const Center(
                              child: Text(
                                '# Elbise',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.brown),
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
                          Icon(
                            Icons.reply,
                            color: Colors.brown.withOpacity(0.2),
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '1.7k',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 16),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.comment,
                            color: Colors.brown.withOpacity(0.2),
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '325',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 16),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 235,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '2.3k',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 16),
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
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage('lib/images/model1.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Gökçe YILDIZ',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
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
                          const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 22,
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
                                  builder: (context) => const Detay(
                                      imgPath: 'lib/images/modelgrid1.jpeg')));
                            },
                            child: Hero(
                              tag: 'lib/images/modelgrid1.jpeg',
                              child: Container(
                                height: 200,
                                width:
                                    (MediaQuery.of(context).size.width - 50) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        'lib/images/modelgrid1.jpeg',
                                      ),
                                      fit: BoxFit.cover),
                                ),
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
                                      builder: (context) => const Detay(
                                          imgPath:
                                              'lib/images/modelgrid2.jpeg')));
                                },
                                child: Hero(
                                  tag: 'lib/images/modelgrid2.jpeg',
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'lib/images/modelgrid2.jpeg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Detay(
                                          imgPath:
                                              'lib/images/modelgrid3.jpeg')));
                                },
                                child: Hero(
                                  tag: 'lib/images/modelgrid3.jpeg',
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'lib/images/modelgrid3.jpeg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
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
                                color: Colors.brown.withOpacity(0.2)),
                            child: const Center(
                              child: Text(
                                '# Bayan Giyim',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.brown),
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
                                color: Colors.brown.withOpacity(0.2)),
                            child: const Center(
                              child: Text(
                                '# Elbise',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.brown),
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
                          Icon(
                            Icons.reply,
                            color: Colors.brown.withOpacity(0.2),
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '1.7k',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 16),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.comment,
                            color: Colors.brown.withOpacity(0.2),
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '325',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 16),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 235,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '2.3k',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 16),
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
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage('lib/images/model1.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Gökçe YILDIZ',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
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
                          const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 22,
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
                                  builder: (context) => const Detay(
                                      imgPath: 'lib/images/modelgrid1.jpeg')));
                            },
                            child: Hero(
                              tag: 'lib/images/modelgrid1.jpeg',
                              child: Container(
                                height: 200,
                                width:
                                    (MediaQuery.of(context).size.width - 50) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        'lib/images/modelgrid1.jpeg',
                                      ),
                                      fit: BoxFit.cover),
                                ),
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
                                      builder: (context) => const Detay(
                                          imgPath:
                                              'lib/images/modelgrid2.jpeg')));
                                },
                                child: Hero(
                                  tag: 'lib/images/modelgrid2.jpeg',
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'lib/images/modelgrid2.jpeg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Detay(
                                          imgPath:
                                              'lib/images/modelgrid3.jpeg')));
                                },
                                child: Hero(
                                  tag: 'lib/images/modelgrid3.jpeg',
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'lib/images/modelgrid3.jpeg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
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
                                color: Colors.brown.withOpacity(0.2)),
                            child: const Center(
                              child: Text(
                                '# Bayan Giyim',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.brown),
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
                                color: Colors.brown.withOpacity(0.2)),
                            child: const Center(
                              child: Text(
                                '# Elbise',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.brown),
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
                          Icon(
                            Icons.reply,
                            color: Colors.brown.withOpacity(0.2),
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '1.7k',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 16),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.comment,
                            color: Colors.brown.withOpacity(0.2),
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '325',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 16),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 235,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '2.3k',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 16),
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
            /*
            Container(
              color: Colors.blueAccent,
              child: const Center(
                  child: Text(
                'TAB 2',
                style: TextStyle(fontSize: 48),
              )),
            ),
            Container(
              color: Colors.greenAccent,
              child: const Center(
                  child: Text(
                'TAB 3',
                style: TextStyle(fontSize: 48),
              )),
            ),*/
          ],
        ),
      ),
    );
  }

/*
  TabBar tabBarim() {
    return TabBar(controller: tabController, tabs: const [
      Tab(
        icon: Icon(Icons.access_alarm_rounded),
        text: 'Takasla Oyla',
      ),
      Tab(
        icon: Icon(Icons.lock),
        text: 'Takas Zinciri',
      ),
      Tab(
        icon: Icon(Icons.add_box),
        text: "Haftanın En'leri",
      ),
    ]);
  }
*/
  PreferredSizeWidget tabBarimBottom() {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 80),
      child: Container(
        color: Colors.black,
        child: TabBar(controller: tabController, tabs: const [
          Tab(
            icon: Icon(Icons.keyboard),
            text: 'Takasla Oyla',
          ),
          Tab(
            icon: Icon(Icons.lock),
            text: 'Takas Zinciri',
          ),
          Tab(
            icon: Icon(Icons.add_box),
            text: "Haftanın En'leri",
          ),
        ]),
      ),
    );
  }
}
