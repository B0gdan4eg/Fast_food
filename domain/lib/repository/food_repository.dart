import 'package:domain/models/food_model.dart';

abstract class FoodRepository {
  Future<List<FoodModel>> fetchListOfFood();
}
