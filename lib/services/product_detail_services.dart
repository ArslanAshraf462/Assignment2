import 'dart:convert';
import '/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/product_detail_model.dart';

class ProductDetailServices with ChangeNotifier {

  var _data;
  bool _isloading=false;

  bool get isloading => _isloading;

  set isloading(bool value) {
    _isloading = value;
  }

  get data => _data;

  set data(value) {
    _data = value;
  }

  String url = 'https://data-otterli-staging.com/api/product_details/$id';
  Future<ProductDetailModel> getProductDetaildata() async {
    var response = await http.get(Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Token bfdf77e6a72ce81badfcc847aaf041255cd65928',
        }
    );
    if(response.statusCode == 200 || response.statusCode == 201) {
      data=ProductDetailModel.fromJson(json.decode(response.body));
      isloading=true;
      notifyListeners();
      return data;
    }else{
      isloading=false;
      return data;
    }
  }
}