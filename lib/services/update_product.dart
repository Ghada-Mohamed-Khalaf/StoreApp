import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category, required dynamic id}) async {
    print('product id  = $id');
    Map<String, dynamic> data =  await Api().put(uri:'https://fakestoreapi.com/products/$id', body: {

          "title": 'test product',
          'price': '13.5',
          'description': 'lorem ipsum set',
          'image': 'https://i.pravatar.cc',
          'category': 'electronic',
        },
        token: '');
    return ProductModel.fromJson(data);
  }
}
