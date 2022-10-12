import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/reviews_model.dart';

class ReviewsServices with ChangeNotifier {

  List<ReviewModel> _reviewList = [];

  List<ReviewModel> get reviewList => _reviewList;

  String url = 'https://data-otterli-staging.com/api/feedback/';
  Future<List<ReviewModel>> getReviewData() async {
    var response = await http.get(Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Token bfdf77e6a72ce81badfcc847aaf041255cd65928',
        }
    );
    var data = json.decode(response.body);
    if(response.statusCode == 200 || response.statusCode == 201) {
      reviewList.add(ReviewModel.fromJson(data));
      notifyListeners();
      return reviewList;
    }else{

      return [];
    }
  }
}