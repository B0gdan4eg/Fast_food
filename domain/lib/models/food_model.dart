import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_model.freezed.dart';

@freezed
class FoodModel with _$FoodModel {
  factory FoodModel({
    required String name,
    required int price,
    required String url,
    required String description,
    required List<String> ingredients,
  }) = _FoodModel;
}
