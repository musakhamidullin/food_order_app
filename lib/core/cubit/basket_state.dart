part of 'basket_cubit.dart';

@freezed
class BasketState with _$BasketState {
  const factory BasketState(
      {@Default([]) List<Dish> dishes,
      @Default(0.0) double totalPrice}) = _BasketState;
}
