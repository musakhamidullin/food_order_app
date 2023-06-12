import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../product/product_exports.dart';

part 'basket_state.dart';

part 'basket_cubit.freezed.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit() : super(const BasketState());

  void add(Dish dish) {
    emit(state.copyWith(dishes: [...state.dishes, dish.copyWith(count: 1)]));

    _getTotalPrice();
  }

  void _getTotalPrice() {
    double totalPrice = 0;

    for (var e in [...state.dishes]) {
      totalPrice += e.priceWithCount;
    }

    emit(state.copyWith(totalPrice: totalPrice));
  }

  void delete(Dish dish) {
    emit(state.copyWith(
        dishes: [...state.dishes]..removeWhere((e) => e.id == dish.id)));

    _getTotalPrice();
  }

  void count(Dish dish) {
    if (dish.count == 0) {
      delete(dish);
      return;
    }

    final dishes = [...state.dishes];

    for (int i = 0; i < dishes.length; i++) {
      if (dishes[i].id == dish.id) {
        dishes[i] = dishes[i].copyWith(
            count: dish.count, priceWithCount: dish.count * dish.price);
      }
    }

    emit(state.copyWith(dishes: dishes));

    _getTotalPrice();
  }
}
