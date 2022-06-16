class Product {
  int? total;
  int? skip;
  int? limit;
  List<Products> products;

  Product({
    required this.limit,
    required this.skip,
    required this.total,
    required this.products,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(limit: json['limit'], skip: json['skip'], total: json['total'], products: List<Products>.from(json['products'].map((products) => Products.fromJson(products))));
    //fromJson() method has parameter Map whose data type is String and value could be dynamic
    // limit = json['limit'];
    // skip = json['skip'];
    // total = json['total'];

    // if (json['products'] != null) {
    //   products = <Products>[]; //create empty list
    //   json['products'].forEach((e) {
    //     //e (loop) = each of List object access one by one
    //     products!.add(Products.fromJson(
    //         e)); //early created empty list , there now put Products model object into  empty List  by calling method
    //   });
    }
    // Map<String, dynamic>? toJson() {
    //   final Map<String, dynamic> data = new Map<String, dynamic>();
    //   data['limit'] = limit;
    //   data['skip'] = skip;
    //   data['total'] = total;
    //   if (products != null) {
    //     data['products'] = products!.map((e) => e.toJson()).toList();
    //     return data;
    //   }
    // }
  }


class Products {
  int? id;
  String? title;
  String? description;
  int? price;
  num? discountPercentage;
  num? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<dynamic>? images;

  Products(
      {required this.brand,
      required this.category,
      required this.description,
      required this.discountPercentage,
      required this.id,
      required this.images,
      required this.price,
      required this.rating,
      required this.stock,
      required this.thumbnail,
      required this.title});

  Products.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    brand = json['brand'];
    category = json['category'];
    description = json['description'];
    discountPercentage = json['discount_percentage'];
    id = json['id'];
    images = json['images'];
    rating = json['rating'];
    stock = json['stock'];
    thumbnail = json['thumbnail'];
    title = json['title'];
  }

  Map<String, dynamic>? toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['price'] = price;
    data['discountPercentage'] = discountPercentage;
    data['rating'] = rating;
    data['stock'] = stock;
    data['brand'] = brand;
    data['category'] = category;
    data['thumbnail'] = thumbnail;
    data['images'] =images;
    return data;
  }
}
