import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ipbb/api/api.dart';
import 'package:ipbb/third_screen.dart';

class Screen extends StatefulWidget {
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  TextEditingController _nop = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String _jsonContent = "";

  Future _loadData(String nop) async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    final jsonData = json.decode(jsonString);

    NOP nop = NOP.fromJSON(jsonData);
    Map data = {'nop': nop};
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: ((context) {
        return Third();
      })));
      // sample.name => you can access field from class model
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                child: TextFormField(
                  onSaved: (String? nop) {},
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Masukkan NOP' : null,
                  controller: _nop,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff353535), width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff536DFE), width: 1)),
                      hintText: 'Ketik di sini..',
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
                    onPressed: () {
                      _loadData(_nop.text);
                    },
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
      ),
    );
  }
}
