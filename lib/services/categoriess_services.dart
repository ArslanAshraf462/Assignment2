import 'dart:convert';
import '../model/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategoriesServices with ChangeNotifier {

  List<CategoriesModel> _newCatList = [];

  List<CategoriesModel> get newCatList => _newCatList;

  String url = 'https://data-otterli-staging.com/api/categories/?icons=True';
  Future<List<CategoriesModel>> getCategoriesdata() async {
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
      newCatList.add(CategoriesModel.fromJson(data));
      //  }
      notifyListeners();
      return newCatList;
    }else{

      return [];
    }
  }
}