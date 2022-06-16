import 'package:dio/dio.dart';
import 'package:product_api/model/product.dart';

List<Products> productModel = [];

Future<Product> fetchData() async {
  var dio = Dio();

  final response =
      await dio.get('https://dummyjson.com/products/category/smartphones');

  if (response.statusCode == 200) {
    var res = response.data;
    var values = Product.fromJson(response.data);
    productModel = values.products;

    return values;
  } else {
    throw Exception('Unscuessful');
  }
}
