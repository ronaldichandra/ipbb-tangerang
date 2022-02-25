import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NOPStat {
  final String nop;
  final String nama, alamat, kecamatan, kelurahan;

  NOPStat(
      {required this.nama,
      required this.nop,
      required this.alamat,
      required this.kecamatan,
      required this.kelurahan});

  factory NOPStat.fromJSON(Map<String, dynamic> json) {
    return NOPStat(
      nop: json['nomorp'],
      nama: json['nama'],
      alamat: json['alamat'],
      kecamatan: json['kecamatan'],
      kelurahan: json['kelurahan'],
    );
  }
}
