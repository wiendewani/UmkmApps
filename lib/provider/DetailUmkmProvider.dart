import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:umkmapp/config/globalConfigUrl.dart';
import 'package:umkmapp/model/DetailUmkm.dart';
import 'package:umkmapp/model/Umkm.dart';
import 'package:http/http.dart' as http;

class DetailUmkmProvider with ChangeNotifier {
  DetailUmkm responeDetailUmkm;

  Future<int> getDetailUmkm(String idUmkm) async {
    String url = GlobalConfigUrl.umkms + '$idUmkm/detail';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        responeDetailUmkm = detailUmkmFromJson(response.body);
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
