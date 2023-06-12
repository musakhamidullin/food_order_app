import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';

part 'dish.g.dart';

@freezed
class Dish with _$Dish {
  const factory Dish(
      {@Default(0) @JsonKey(name: 'id') int id,
      @Default('') @JsonKey(name: 'name') String name,
      @Default(0.0) @JsonKey(name: 'price') double price,
      @Default(0.0) @JsonKey(name: 'weight') double weight,
      @Default('') @JsonKey(name: 'description') String description,
      @Default('') @JsonKey(name: 'image_url') String imageUrl,
      @Default([]) @JsonKey(name: 'tegs') List<String> tags,
      @Default(0) @JsonKey(includeFromJson: false) int count,
      @Default(0.0) @JsonKey(includeFromJson: false) priceWithCount}) = _Dish;

  factory Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);
}
