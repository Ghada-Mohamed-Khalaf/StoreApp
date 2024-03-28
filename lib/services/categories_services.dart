import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class CategoriesServices {
  Future<List<dynamic>> getCategoriesProducts(
      {required String CategoriesName}) async {
    http.Response response = await http.get(
      Uri.parse("https://fakestoreapi.com/products/category/$CategoriesName"),
    );

    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productlist = [];
    for (int i = 0; i < data.length; i++) {
      productlist.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productlist;
  }
}
