// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodEntity _$$_FoodEntityFromJson(Map<String, dynamic> json) =>
    _$_FoodEntity(
      name: json['name'] as String,
      price: json['price'] as int,
      url: json['url'] as String,
      description: json['description'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_FoodEntityToJson(_$_FoodEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'url': instance.url,
      'description': instance.description,
      'ingredients': instance.ingredients,
    };
