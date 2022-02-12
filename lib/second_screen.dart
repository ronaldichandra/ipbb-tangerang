import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input',
      theme: ThemeData(),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 128),
              child: Text(
                'Masukkan Nomor',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Objek Pajak',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 67),
              alignment: Alignment.topLeft,
              child: Text(
                'Nomor Objek Pajak',
                style: TextStyle(fontWeight: FontWeight.w100, fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff353535), width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff536DFE), width: 1)),
                    hintText: '##.##-###.###-###.####.#-####',
                    hintStyle:
                        TextStyle(color: Color(0xff979797), fontSize: 14)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 24),
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 144,
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffDBE0FE))),
                  child: Text(
                    'Kirim',
                    style: TextStyle(
                        color: Color(0xff536DFE),
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(top: 76),
              child: Image.asset(
                'images/login2.png',
                width: 170,
              ),
            )
          ],
        ),
      ),
    );
  }
}
