import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:appnews/main.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/aku.jpg'),
          ),
          Text(
            "ABDILAH",
            style: TextStyle(
              fontFamily: 'BebasNeue',
              color: Colors.red,
              fontSize: 25,
            ),
          ),
          Text(
            "FLUTTER DEVELOVER",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 23,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 50.0,
            width: 150.0,
            child: Divider(
              color: Colors.green,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.green[900],
              ),
              title: Text(
                "NPM : 19710067",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.green[900],
              ),
              title: Text(
                "Alamat :jl.Tanjung Berkat Gg.Masdah ",
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                CupertinoIcons.house_alt,
                color: Colors.green[900],
              ),
              title: Text(
                "TTL : Banjarmasin 03 - 07 - 2000",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
// class cardProfile extends StatelessWidget {
//   const cardProfile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       ),
//     );
//   }
// }

