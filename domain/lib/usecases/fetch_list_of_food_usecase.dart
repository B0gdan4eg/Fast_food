import 'package:domain/domain.dart';

class FetchListOfFoodUseCase
    implements FutureUseCase<NoParams, List<FoodModel>> {
  final FoodRepository _foodRepository;

  FetchListOfFoodUseCase({
    required FoodRepository foodRepository,
  }) : _foodRepository = foodRepository;

  @override
  Future<List<FoodModel>> execute(NoParams input) async {
    return _foodRepository.fetchListOfFood();
  }
}
