import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NOP {
  final int nop;
  final String nama, alamat, kecamatan, kelurahan;

  NOP(
      {required this.nama,
      required this.nop,
      required this.alamat,
      required this.kecamatan,
      required this.kelurahan});

  factory NOP.fromJSON(Map<String, dynamic> json) {
    return NOP(
      nop: json['data'],
      nama: json['data'],
      alamat: json['data'],
      kecamatan: json['data'],
      kelurahan: json['data'],
    );
  }
}
