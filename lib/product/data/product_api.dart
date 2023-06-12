
import '../../core/core_api.dart';
import '../../core/interface_api.dart';
import '../../core/url_paths.dart';
import '../product_exports.dart';

class ProductApi extends DioApi implements ApiOperation<Dish>{
  @override
  Future<List<Dish>> get() async {

    final request = await dio.get(UrlPath.dishes);

    final list = <Dish>[];

    for(var e in request.data['dishes']){
      final dish = Dish.fromJson(e);
      list.add(dish.copyWith(priceWithCount: dish.price));
    }

    return list;
  }

}