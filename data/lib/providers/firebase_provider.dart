import 'package:data/entities/food/food_entity.dart';
import 'package:data/providers/provider.dart';
import 'package:core/core.dart';

class FirebaseProvider extends Provider {
  final CollectionReference _food;
  FirebaseProvider({required food}) : _food = food;

  @override
  Future<List<FoodEntity>> fetchFood() async {
    final QuerySnapshot<Map<String, dynamic>> response = await _food
        .doc(StringConstants.firebaseDocumentName)
        .collection(StringConstants.firebaseCollectionName)
        .get();
    final List<FoodEntity> result = response.docs
        .map((doc) => FoodEntity.fromJson(
              doc.data().cast<String, Object>(),
            ))
        .toList();
    return result;
  }
}
