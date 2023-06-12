import '../product_exports.dart';
import 'product_api.dart';

class ProductRepo{

  ProductRepo(){
    _api = ProductApi();
  }


  late final ProductApi _api;


  Future<List<Dish>> getDishes() async {
    final list = await _api.get();

    return list;
  }
}