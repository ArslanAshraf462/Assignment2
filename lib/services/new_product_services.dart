import 'dart:convert';
import 'package:flutter/material.dart';

import '../model/new_product_model.dart';
import 'package:http/http.dart' as http;

class NewProductServices with ChangeNotifier {

  List<NewProductModel> _newProList = [];

  List<NewProductModel> get newProList => _newProList;

  String url = 'https://data-otterli-staging.com/api/latest_products/';
  Future<List<NewProductModel>> getNewProductdata() async {
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
      newProList.add(NewProductModel.fromJson(data));
      //  }
       notifyListeners();
      return newProList;
    }else{

      return [];
    }
  }
}