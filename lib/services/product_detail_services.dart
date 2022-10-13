import 'dart:convert';
import '/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/product_detail_model.dart';

class ProductDetailServices with ChangeNotifier {

  String url = 'https://data-otterli-staging.com/api/product_details/$id';
  Future<ProductDetailModel> getProductDetaildata() async {
    var response = await http.get(Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Token bfdf77e6a72ce81badfcc847aaf041255cd65928',
        }
    );
    var data = json.decode(response.body);
    if(response.statusCode == 200 || response.statusCode == 201) {
      //  for(Map i in data){
      // newProList.add(NewProductModel.fromJson(data));
      //  }
      notifyListeners();
      return ProductDetailModel.fromJson(data);
    }else{

      return ProductDetailModel.fromJson(data);
    }
  }
}