import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:meta/meta.dart';

part 'event.dart';
part 'state.dart';

class MenuViewBloc extends Bloc<MenuViewEvent, MenuViewState> {
  final FetchListOfFoodUseCase _fetchListOfFoodUseCase;

  MenuViewBloc({required FetchListOfFoodUseCase fetchListOfFoodUseCase})
      : _fetchListOfFoodUseCase = fetchListOfFoodUseCase,
        super(EmptyState()) {
    on<InitEvent>(_init);
    add(InitEvent());
  }

  void _init(InitEvent event, Emitter<MenuViewState> emit) async {
    emit(LoadingState());
    try {
      final List<FoodModel> food = await _fetchListOfFoodUseCase.execute(
        const NoParams(),
      );
      emit(LoadedState(food: food));
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }
}
