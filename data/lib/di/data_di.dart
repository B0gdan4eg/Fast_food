import 'package:core/core.dart';
import 'package:data/providers/firebase_provider.dart';
import 'package:data/providers/provider.dart';
import 'package:data/repository/food_repository_impl.dart';
import 'package:domain/domain.dart';

final DataDI dataDI = DataDI();

class DataDI {
  Future<void> initDependencies() async {
    _initRemoteDataService();
    _initFood();
  }

  void _initRemoteDataService() {
    appLocator.registerLazySingleton<Provider>(() => FirebaseProvider(
            food: FirebaseFirestore.instance.collection(
          StringConstants.firebaseTableName,
        )));
  }

  void _initFood() {
    appLocator.registerLazySingleton<FoodRepository>(
        () => FoodRepositoryImpl(provider: appLocator.get<Provider>()));

    appLocator.registerLazySingleton<FetchListOfFoodUseCase>(() =>
        FetchListOfFoodUseCase(
            foodRepository: appLocator.get<FoodRepository>()));
  }
}
