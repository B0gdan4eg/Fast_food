import 'package:data/entities/food/food_entity.dart';

abstract class Provider {
  Future<List<FoodEntity>> fetchFood();
}
