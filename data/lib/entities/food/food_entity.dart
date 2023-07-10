import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_entity.freezed.dart';
part 'food_entity.g.dart';

@freezed
class FoodEntity with _$FoodEntity {
  factory FoodEntity({
    required String name,
    required int price,
    required String url,
    required String description,
    required List<String> ingredients,
  }) = _FoodEntity;

  factory FoodEntity.fromJson(Map<String, Object> json) =>
      _$FoodEntityFromJson(json);
}
