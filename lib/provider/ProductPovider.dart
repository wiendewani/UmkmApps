import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:umkmapp/config/globalConfigUrl.dart';
import 'package:umkmapp/model/DetailUmkm.dart';
import 'package:umkmapp/model/Product.dart';
import 'package:umkmapp/model/Umkm.dart';
import 'package:http/http.dart' as http;

class ProductProvider with ChangeNotifier {
  Product responeProduct;

  Future<int> getProduct(String idUmkm) async {
    String url = GlobalConfigUrl.product + '$idUmkm/umkm';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        responeProduct = productFromJson(response.body);
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
