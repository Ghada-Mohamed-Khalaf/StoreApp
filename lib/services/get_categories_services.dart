import 'package:store_app/helpers/api.dart';

class AllCategoriesServices {
  Future<List> getAllCategories() async {
    List<dynamic> data =
        await Api().get(uri: "https://fakestoreapi.com/products/categories");

    return data;
  }
}
