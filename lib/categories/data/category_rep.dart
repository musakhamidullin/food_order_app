import '../categories_exports.dart';
import 'category_api.dart';

class CategoryRep{

  CategoryRep(){
    _api = CategoryApi();
  }

  late final CategoryApi _api;
  
  Future<List<Categories>> getCategories()  async {

    final result = await _api.get();

    return result;
  }
}