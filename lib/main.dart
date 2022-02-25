import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'second_screen.dart';

int? initScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = await prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: initScreen == 0 || initScreen == null ? 'first' : '/',
      routes: {'/': (context) => Screen(), 'first': (context) => FirstScreen()},
      theme: ThemeData(
          fontFamily: 'Montserrat', scaffoldBackgroundColor: Colors.white),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Text(
                  'Selamat Datang',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
              ),
              Container(
                child: Text(
                  'di iPBB Tangerang',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 56),
                child: Image.asset(
                  'images/login.png',
                  height: 177,
                  width: 177,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 56),
                child: Text(
                  'Mengetahui informasi tagihan',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                ),
              ),
              Container(
                child: Text(
                  'PBB Kota Tangerang',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 56),
            child: SizedBox(
              width: 305,
              height: 56,
              child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xffDBE0FE),
                    )),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Screen();
                  }));
                },
                child: Text(
                  'Mulai',
                  style: TextStyle(
                      color: Color(0xff536DFE),
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
              ),
            ))
      ],
    ));
  }
}
