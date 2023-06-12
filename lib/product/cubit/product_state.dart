part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState(
      {@Default([]) List<Dish> dishes,
      @Default({}) Map<String, List<Dish>> categories,
      @Default({}) Map<String ,(String, bool)> selectedTab}) = _ProductState;
}
