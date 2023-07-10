import 'package:data/entities/food/food_entity.dart';
import 'package:domain/models/food_model.dart';

abstract class FoodMapper {
  static FoodEntity toEntity(FoodModel model) {
    return FoodEntity(
      name: model.name,
      price: model.price,
      url: model.url,
      description: model.description,
      ingredients: model.ingredients,
    );
  }

  static FoodModel toModel(FoodEntity entity) {
    return FoodModel(
      name: entity.name,
      price: entity.price,
      url: entity.url,
      description: entity.description,
      ingredients: entity.ingredients,
    );
  }
}
