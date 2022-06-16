import 'package:flutter/material.dart';

import 'package:product_api/model/product.dart';
import 'package:product_api/provider/auth_provider.dart';
import 'package:product_api/views/views.dart';
import 'package:provider/provider.dart';

class ProductApi extends StatefulWidget {
  const ProductApi({Key? key}) : super(key: key);

  @override
  State<ProductApi> createState() => _ProductApiState();
}

class _ProductApiState extends State<ProductApi> {

  @override
  void initState() {
    Future.microtask(() {
    Provider.of<AuthProvider>(context, listen: false).getPost();
    });
    
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Product Api'),
      ),
      body: Consumer<AuthProvider>(
        
        builder: (context, value, child) {
         return ListView.builder(
          itemCount: productModel.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               Image.network(productModel[index].thumbnail ?? ""),
              Text(productModel[index].title ?? ""),
              Text(productModel[index].brand ?? ""),
              Text(productModel[index].price.toString() ),
              Text(productModel[index].rating.toString())
           
              
          ],
        ),
            );
          }
        );
        }
      ),
    );
    
  }
}