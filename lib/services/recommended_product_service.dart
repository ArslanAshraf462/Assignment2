import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/recommended_product_model.dart';

class RecommendedProductServices {

  // Future<List<dynamic>> getRecommendProductdata () async {
  //   var data;
  //   String url = 'https://data-otterli-staging.com/api/recommended_products/';
  //   final response = await http.get(Uri.parse(url));
  //   if(response.statusCode == 200){
  //     data = json.decode(response.body);
  //     return data;
  //   }else{
  //     throw Exception('Error');
  //   }
  // }
  List<RecommendProductModel> _recommendProList = [];

  List<RecommendProductModel> get recommendProList => _recommendProList;
  //String token= 'bfdf77e6a72ce81badfcc847aaf041255cd65928' ;
  String url = 'https://data-otterli-staging.com/api/recommended_products/';
  Future<List<RecommendProductModel>> getRecommendProductdata() async {
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
        recommendProList.add(RecommendProductModel.fromJson(data));
    //  }

      return recommendProList;
    }else{

      return [];
    }
  }
}