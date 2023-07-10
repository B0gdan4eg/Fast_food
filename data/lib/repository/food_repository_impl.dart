import 'package:data/entities/food/food_entity.dart';
import 'package:data/mappers/food_mapper.dart';
import 'package:data/providers/provider.dart';
import 'package:domain/domain.dart';

class FoodRepositoryImpl implements FoodRepository {
  final Provider _provider;

  FoodRepositoryImpl({
    required provider,
  }) : _provider = provider;

  @override
  Future<List<FoodModel>> fetchListOfFood() async {
    final List<FoodEntity> result = await _provider.fetchFood();
    return result.map((item) => FoodMapper.toModel(item)).toList();
  }
}
