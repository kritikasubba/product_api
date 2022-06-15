import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:product_api/model/product.dart';

class AuthProvider extends ChangeNotifier{
  Future <List<Products>> fetchData() async {
    var dio = Dio();
    final response = await dio.get('https://dummyjson.com/products/category/smartphones');

    if(response.statusCode == 200 ) {
      List jsonResponse = jsonDecode(response.data);
      return jsonResponse.map((e) => Products.fromJson(e)).toList();

    }
    else {
      throw Exception('unsucessful');
    }
  }
}