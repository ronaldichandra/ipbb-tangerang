import 'package:flutter/material.dart';
import 'package:ipbb/api/api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NopAPI {
  Future<NOPStat> getNOP() async {
    String url =
        'https://raw.githubusercontent.com/ronaldichandra/ipbb-tangerang/main/assets/data.json';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return NOPStat.fromJSON(json.decode(response.body));
    } else {
      throw Exception('Gagal load');
    }
  }
}
