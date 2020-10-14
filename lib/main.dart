import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ujian_flutter/shalat.dart';
import 'AlQuran.dart';
import 'pagi.dart';

void main() {
  runApp( Rute());
}

class Rute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainApp(),
        '/dzikirpagi': (context) => DzikirPagi(),
        '/dzikirpetang': (context) => DzikirPetang(),
        '/jadwalshalat' : (context) => Shalat(),
        '/alquran' : (context) => AlQuran(),

      },
      debugShowCheckedModeBanner: false,
    );
  }
}


class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0.0,
        title: Text("Mesin Pencari Sunnah"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Damar Ardian Alfirisky"),
              accountEmail: Text("damar.rizki212@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://www.flaticon.com/svg/static/icons/svg/2919/2919600.svg"),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://htmlcolorcodes.com/assets/images/html-color-codes-color-tutorials-hero-00e10b1f.jpg'),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,bottom: 20),
              child: Text(
                "Utama",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              splashColor: Colors.black.withAlpha(10),
              onTap: () {

              },
              child: Container(
                child: ListTile(
                    title: Text('Dashboard'),
                    leading: Icon(
                        Icons.home,
                        color: Colors.black,
                    )
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.black.withAlpha(10),
              onTap: () {
                Navigator.pushNamed(context, '/dzikirpagi');
              },
              child: Container(
                height: 50,
                child: ListTile(
                  title: Text('Dzikir pagi'),
                  leading: Image.asset(
                    'assets/sun.png',
                    height: 30,
                    width: 30,
                  )
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.black.withAlpha(10),
              onTap: () {
                Navigator.pushNamed(context, '/dzikirpetang');
              },
              child: Container(
                height: 50,
                child: ListTile(
                  title: Text('Dzikir Petang'),
                  leading: Image.asset(
                      'assets/waning-moon.png',
                    height: 30,
                    width: 30,
                  )
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.purple,
      body: ListView(children: [
       ListTile(
         title:  Container(
             padding: EdgeInsets.all(20),
             child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Image(image: AssetImage('assets/images.png'))
                 ])
         ),
       ),
        ListTile(
          title: TextField(
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Apa yang antum cari?",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            keyboardType: TextInputType.text,
          ),
        ),
        ListTile(
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  child: InkWell(
                    splashColor: Colors.black.withAlpha(30),
                    onTap: () {
                     Navigator.pushNamed(context, '/alquran');
                    },
                    child: Container(
                      padding: EdgeInsets.all(2),
                      width: 70,
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/islam.png',
                            height: 70,
                            width: 70,
                          ),
                          Text(
                            'Baca Al-Quran',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.black.withAlpha(30),
                    onTap: () {
                      print("cardTapped");
                    },
                    child: Container(
                      padding: EdgeInsets.all(2),
                      width: 70,
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/chat.png',
                            height: 70,
                            width: 70,
                          ),
                          Text(
                            'Ruang Chat',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.black.withAlpha(30),
                    onTap: () {
                      print("cardTapped");
                    },
                    child: Container(
                      padding: EdgeInsets.all(2),
                      width: 70,
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/event.png',
                            height: 70,
                            width: 70,
                          ),
                          Text(
                            'Info Kajian',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.black.withAlpha(30),
                    onTap: () {
                      Navigator.pushNamed(context, '/jadwalshalat');
                    },
                    child: Container(
                      padding: EdgeInsets.all(2),
                      width: 70,
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/alarm-clock.png',
                            height: 70,
                            width: 70,
                          ),
                          Text(
                            'Waktu Shalat',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  child: InkWell(
                    splashColor: Colors.black.withAlpha(30),
                    onTap: () {
                      Navigator.pushNamed(context, '/dzikirpagi');
                    },
                    child: Container(
                      padding: EdgeInsets.all(2),
                      width: 70,
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/sun.png',
                            height: 70,
                            width: 70,
                          ),
                          Text(
                            'Dzikir Pagi',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.black.withAlpha(30),
                    onTap: () {
                      Navigator.pushNamed(context, '/dzikirpetang');
                    },
                    child: Container(
                      padding: EdgeInsets.all(2),
                      width: 70,
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/waning-moon.png',
                            height: 70,
                            width: 70,
                          ),
                          Text(
                            'Dzikir Petang',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.black.withAlpha(30),
                    onTap: () {
                      print("cardTapped");
                    },
                    child: Container(
                      padding: EdgeInsets.all(2),
                      width: 70,
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/islam(1).png',
                            height: 70,
                            width: 70,
                          ),
                          Text(
                            'Masjid Terdekat',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.black.withAlpha(30),
                    onTap: () {
                      print("cardTapped");
                    },
                    child: Container(
                      padding: EdgeInsets.all(2),
                      width: 70,
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/history.png',
                            height: 70,
                            width: 70,
                          ),
                          Text(
                            'Histori Pencarian',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          title: Container(
            child: Card(
              color: Colors.white,
              elevation: 10,
              child: InkWell(
                splashColor: Colors.black.withAlpha(30),
                onTap: () {
                  print("artikeltapped");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset('assets/images.png', scale: 1.0),
                      title: Text('Kisah Para Sahabat', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        ListTile(
          title: Container(
            child: Card(
              color: Colors.white,
              elevation: 10,
              child: InkWell(
                splashColor: Colors.black.withAlpha(30),
                onTap: () {
                  print("artikeltapped");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset('assets/images.png', scale: 1.0),
                      title: Text('Hukum Wudhu Tayamum', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        ListTile(
          title: Container(
            child: InkWell(
              splashColor: Colors.black.withAlpha(30),
              onTap: () {
                print("artikeltapped");
              },
              child: Card(
                color: Colors.white,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset('assets/images.png', scale: 1.0),
                      title: Text('Kisah Para Nabi', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
