// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasketState {
  List<Dish> get dishes => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketStateCopyWith<BasketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketStateCopyWith<$Res> {
  factory $BasketStateCopyWith(
          BasketState value, $Res Function(BasketState) then) =
      _$BasketStateCopyWithImpl<$Res, BasketState>;
  @useResult
  $Res call({List<Dish> dishes, double totalPrice});
}

/// @nodoc
class _$BasketStateCopyWithImpl<$Res, $Val extends BasketState>
    implements $BasketStateCopyWith<$Res> {
  _$BasketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      dishes: null == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasketStateCopyWith<$Res>
    implements $BasketStateCopyWith<$Res> {
  factory _$$_BasketStateCopyWith(
          _$_BasketState value, $Res Function(_$_BasketState) then) =
      __$$_BasketStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Dish> dishes, double totalPrice});
}

/// @nodoc
class __$$_BasketStateCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res, _$_BasketState>
    implements _$$_BasketStateCopyWith<$Res> {
  __$$_BasketStateCopyWithImpl(
      _$_BasketState _value, $Res Function(_$_BasketState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
    Object? totalPrice = null,
  }) {
    return _then(_$_BasketState(
      dishes: null == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_BasketState implements _BasketState {
  const _$_BasketState(
      {final List<Dish> dishes = const [], this.totalPrice = 0.0})
      : _dishes = dishes;

  final List<Dish> _dishes;
  @override
  @JsonKey()
  List<Dish> get dishes {
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishes);
  }

  @override
  @JsonKey()
  final double totalPrice;

  @override
  String toString() {
    return 'BasketState(dishes: $dishes, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketState &&
            const DeepCollectionEquality().equals(other._dishes, _dishes) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dishes), totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasketStateCopyWith<_$_BasketState> get copyWith =>
      __$$_BasketStateCopyWithImpl<_$_BasketState>(this, _$identity);
}

abstract class _BasketState implements BasketState {
  const factory _BasketState(
      {final List<Dish> dishes, final double totalPrice}) = _$_BasketState;

  @override
  List<Dish> get dishes;
  @override
  double get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_BasketStateCopyWith<_$_BasketState> get copyWith =>
      throw _privateConstructorUsedError;
}
