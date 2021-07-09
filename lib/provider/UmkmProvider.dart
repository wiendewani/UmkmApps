

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:umkmapp/config/globalConfigUrl.dart';
import 'package:umkmapp/model/Umkm.dart';
import 'package:http/http.dart' as http;

class UmkmProvider  with ChangeNotifier{

  Umkm responeUmkm;

  Future<int> getUmkm(String idCategory) async {
    String url = GlobalConfigUrl.umkms+'$idCategory/category';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        responeUmkm = umkmFromJson(response.body);
        notifyListeners();
      }

      return response.statusCode;
    } on TimeoutException catch (_) {
      return 500;
    } on SocketException catch (_) {
      return 500;
    }
  }
}