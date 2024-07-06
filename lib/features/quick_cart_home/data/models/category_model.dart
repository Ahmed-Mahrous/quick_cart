class CategoryProduct {
  final int id;
  final String title;
  final price;
  final String image;
  final String description;
  final String category;

  CategoryProduct({
    required this.category,
    required this.price,
    required this.image,
    required this.description,
    required this.id,
    required this.title,
  });

  factory CategoryProduct.fromJson(Map<String, dynamic> json) {
    return CategoryProduct(
      category: json['category'],
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      image: json['image'],
    );
  }
}
