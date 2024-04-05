class ProductModel {
  final int id;
  final String title;
  final num price;
  final String description;
  final String image;
  final RatingModle rating; //any map using model******

  ProductModel({
    //build constructor
    required this.id, //must required --->null safety
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData["id"],
        title: jsonData["title"],
        price: jsonData["price"],
        description: jsonData["description"],
        image: jsonData["image"],
        rating: RatingModle.fromJason(jsonData['rating']));
  }
}

class RatingModle {
  final num rate;
  final int count;
  RatingModle({required this.rate, required this.count});

  factory RatingModle.fromJason(jsonData) {
    return RatingModle(rate: jsonData["rate"], count: jsonData["count"]);
  }
}
