// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodEntity _$FoodEntityFromJson(Map<String, dynamic> json) {
  return _FoodEntity.fromJson(json);
}

/// @nodoc
mixin _$FoodEntity {
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodEntityCopyWith<FoodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodEntityCopyWith<$Res> {
  factory $FoodEntityCopyWith(
          FoodEntity value, $Res Function(FoodEntity) then) =
      _$FoodEntityCopyWithImpl<$Res, FoodEntity>;
  @useResult
  $Res call(
      {String name,
      int price,
      String url,
      String description,
      List<String> ingredients});
}

/// @nodoc
class _$FoodEntityCopyWithImpl<$Res, $Val extends FoodEntity>
    implements $FoodEntityCopyWith<$Res> {
  _$FoodEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? url = null,
    Object? description = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodEntityCopyWith<$Res>
    implements $FoodEntityCopyWith<$Res> {
  factory _$$_FoodEntityCopyWith(
          _$_FoodEntity value, $Res Function(_$_FoodEntity) then) =
      __$$_FoodEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int price,
      String url,
      String description,
      List<String> ingredients});
}

/// @nodoc
class __$$_FoodEntityCopyWithImpl<$Res>
    extends _$FoodEntityCopyWithImpl<$Res, _$_FoodEntity>
    implements _$$_FoodEntityCopyWith<$Res> {
  __$$_FoodEntityCopyWithImpl(
      _$_FoodEntity _value, $Res Function(_$_FoodEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? url = null,
    Object? description = null,
    Object? ingredients = null,
  }) {
    return _then(_$_FoodEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodEntity implements _FoodEntity {
  _$_FoodEntity(
      {required this.name,
      required this.price,
      required this.url,
      required this.description,
      required final List<String> ingredients})
      : _ingredients = ingredients;

  factory _$_FoodEntity.fromJson(Map<String, dynamic> json) =>
      _$$_FoodEntityFromJson(json);

  @override
  final String name;
  @override
  final int price;
  @override
  final String url;
  @override
  final String description;
  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'FoodEntity(name: $name, price: $price, url: $url, description: $description, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, url, description,
      const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodEntityCopyWith<_$_FoodEntity> get copyWith =>
      __$$_FoodEntityCopyWithImpl<_$_FoodEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodEntityToJson(
      this,
    );
  }
}

abstract class _FoodEntity implements FoodEntity {
  factory _FoodEntity(
      {required final String name,
      required final int price,
      required final String url,
      required final String description,
      required final List<String> ingredients}) = _$_FoodEntity;

  factory _FoodEntity.fromJson(Map<String, dynamic> json) =
      _$_FoodEntity.fromJson;

  @override
  String get name;
  @override
  int get price;
  @override
  String get url;
  @override
  String get description;
  @override
  List<String> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_FoodEntityCopyWith<_$_FoodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
