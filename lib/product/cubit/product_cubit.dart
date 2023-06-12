import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/product_rep.dart';
import '../product_exports.dart';

part 'product_state.dart';

part 'product_cubit.freezed.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productRepo) : super(const ProductState()) {
    _getDishes();
  }

  final ProductRepo productRepo;
  Map<String, (String, bool)> _tempTags = {};
  Map<String, List<Dish>> _tempDishes = {};

  Future<void> _getDishes() async {
    final list = await productRepo.getDishes();

    final categoryDishes = _getAllCategories(list);

    final Map<String, (String, bool)> record = {};

    for(var e in categoryDishes.keys){

     record[e] = (e, false);
    }

    _tempTags = record;

    _tempDishes = categoryDishes;

    emit(state.copyWith(
        dishes: list, categories: categoryDishes, selectedTab: record));
  }

  Map<String, List<Dish>> _getAllCategories(List<Dish> dishes) {
    final Map<String, List<Dish>> categories = {};

    for (int i = 0; i < dishes.length; i++) {
      for (int j = 0; j < dishes[i].tags.length; j++) {
        final categoryName = dishes[i].tags[j];

        if (!categories.containsKey(categoryName)) {
          categories[categoryName] = [];
        }
        final list = categories[categoryName];
        list!.add(dishes[i]);
        categories[categoryName] = list;
      }
    }
    return categories;
  }

  void selectCategory(String name){

    final records = {..._tempTags};

    records[name] = (name, true);

    emit(state.copyWith(selectedTab: records, dishes: _tempDishes[name]!));
  }
}
