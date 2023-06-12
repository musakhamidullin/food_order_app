



import '../../../core/core_api.dart';
import '../../../core/url_paths.dart';
import '../../core/interface_api.dart';
import '../categories_exports.dart';

class CategoryApi extends DioApi implements ApiOperation<Categories>{
  
  @override
  Future<List<Categories>> get() async{

    final request = await dio.get(UrlPath.categories);

    final list = <Categories>[];

    for(var e in request.data['сategories']){
      list.add(Categories.fromJson(e));
    }

    return list;
  }
}