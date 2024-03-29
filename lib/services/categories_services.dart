import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesServices {
  Future<List<dynamic>> getCategoriesProducts(
      {required String CategoriesName}) async {
    List<dynamic> data = await Api()
        .get(uri: "https://fakestoreapi.com/products/category/$CategoriesName");

    List<ProductModel> productlist = [];
    for (int i = 0; i < data.length; i++) {
      productlist.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productlist;
  }
}
