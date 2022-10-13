import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/recommended_product_model.dart';

class RecommendedProductServices {

 // List<RecommendProductModel> _recommendProList = [];

 // List<RecommendProductModel> get recommendProList => _recommendProList;
  String url = 'https://data-otterli-staging.com/api/recommended_products/';
  Future<RecommendProductModel> getRecommendProductdata() async {
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
       // recommendProList.add(RecommendProductModel.fromJson(data));
    //  }

      return RecommendProductModel.fromJson(data);
    }else{

      return RecommendProductModel.fromJson(data);
    }
  }
}