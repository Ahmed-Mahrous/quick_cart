class Product {
  final int? id;
  final String? name;
  final String? price;
  final String? image;
  final String? sellerImage;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.sellerImage,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
      sellerImage: json['sellerImage'],
    );
  }
}

class ProductCategory {
  final List<Product>? bestSelling;
  final List<Product>? newArrival;
  final List<Product>? recommendedForYou;

  ProductCategory({
    required this.bestSelling,
    required this.newArrival,
    required this.recommendedForYou,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) {
    return ProductCategory(
      bestSelling: (json['bestSelling'] as List)
          .map((i) => Product.fromJson(i))
          .toList(),
      newArrival:
          (json['newArrival'] as List).map((i) => Product.fromJson(i)).toList(),
      recommendedForYou: (json['recommendedForYou'] as List)
          .map((i) => Product.fromJson(i))
          .toList(),
    );
  }
}
