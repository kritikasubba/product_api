import 'package:flutter/material.dart';
import 'package:product_api/model/product.dart';
import 'package:product_api/views/views.dart';

class AuthProvider extends ChangeNotifier{
  Product? _productModel;

Product? get prodModel {
  return _productModel;
}

set post(Product? pmodel) {
  _productModel = pmodel;
}

getPost() async {
  _productModel = await fetchData();
 notifyListeners();
}
  
  
  
}