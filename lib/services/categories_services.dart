import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesServices {
  Future<List<dynamic>> getCategoriesProducts(
      // ignore: non_constant_identifier_names
      {required String CategoriesName}) async {
    List<dynamic> data = await Api().get(
        uri: "https://fakestoreapi.com/products/category/$CategoriesName",
        token: '');

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
