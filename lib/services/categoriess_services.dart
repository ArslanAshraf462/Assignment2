import 'dart:convert';
import '../model/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategoriesServices with ChangeNotifier {

  var _data;
  bool _isloaded = false;

  bool get isloaded => _isloaded;

  set isloaded(bool value) {
    _isloaded = value;
  }

  get data => _data;

  set data(value) {
    _data = value;
  }

  String url = 'https://data-otterli-staging.com/api/categories/?icons=True';
  Future<CategoriesModel> getCategoriesdata() async {
    var response = await http.get(Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Token bfdf77e6a72ce81badfcc847aaf041255cd65928',
        }
    );
   // var data = json.decode(response.body);
    if(response.statusCode == 200 || response.statusCode == 201) {
      //  for(Map i in data){
     // newCatList.add(CategoriesModel.fromJson(data));
      //  }
      data = CategoriesModel.fromJson(json.decode(response.body));
      isloaded= true;
      notifyListeners();
      return data;
    }else{
      isloaded = false;
      return data;
    }
  }
}