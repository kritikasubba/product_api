class Product {
  int? total;
  int? skip;
  int? limit;
  List<Products>? products;

  Product({
    required this.limit,
    required this.skip,
    required this.total,
    required this.products,
  });

  Product.fromJson(Map<String, dynamic> json) {
    //fromJson() method has parameter Map whose data type is String and value could be dynamic
    limit = json['limit'];
    skip = json['skip'];
    total = json['total'];
    if (json['products'] != null) {
      products = <Products>[]; //create empty list
      json['products'].forEach((e) {
        //e (loop) = each of List object access one by one
        products!.add(Products.fromJson(
            e)); //early created empty list , there now put Products model object into  empty List  by calling method
      });
    }
    Map<String, dynamic>? toJson() {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      data['limit'] = this.limit;
      data['skip'] = this.skip;
      data['total'] = this.total;
      if (this.products != null) {
        data['products'] = this.products!.map((e) => e.toJson()).toList();
        return data;
      }
    }
  }
}

class Products {
  int? id;
  String? title;
  String? description;
  int? price;
  int? discountPercentage;
  int? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

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
    images = json['images'].cast<String>();
    rating = json['rating'];
    stock = json['stock'];
    thumbnail = json['thumbnail'];
    title = json['title'];
  }

  Map<String, dynamic>? toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['discountPercentage'] = this.discountPercentage;
    data['rating'] = this.rating;
    data['stock'] = this.stock;
    data['brand'] = this.brand;
    data['category'] = this.category;
    data['thumbnail'] = this.thumbnail;
    data['images'] = this.images;
    return data;
  }
}
