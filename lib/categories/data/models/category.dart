import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Categories with _$Categories {
  factory Categories(
      {@Default(0) @JsonKey(name: 'id') int id,
      @Default('') @JsonKey(name: 'name') String name,
      @Default('') @JsonKey(name: 'image_url') String imagePath

      }) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}
