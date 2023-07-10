// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    FoodViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HomePage(),
      );
    },
    DetailedFoodRoute.name: (routeData) {
      final args = routeData.argsAs<DetailedFoodRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DetailedFoodView(
          key: args.key,
          foodModel: args.foodModel,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          FoodViewRoute.name,
          path: '/',
        ),
        RouteConfig(
          DetailedFoodRoute.name,
          path: '/detailed-Food-screen',
        ),
      ];
}

/// generated route for
/// [FoodViewScreen]
class FoodViewRoute extends PageRouteInfo<void> {
  const FoodViewRoute()
      : super(
          FoodViewRoute.name,
          path: '/',
        );

  static const String name = 'FoodViewRoute';
}

/// generated route for
/// [DetailedFoodScreen]
class DetailedFoodRoute extends PageRouteInfo<DetailedFoodRouteArgs> {
  DetailedFoodRoute({
    Key? key,
    required FoodModel foodModel,
  }) : super(
          DetailedFoodRoute.name,
          path: '/detailed-food-screen',
          args: DetailedFoodRouteArgs(
            key: key,
            foodModel: foodModel,
          ),
        );

  static const String name = 'DetailedFoodRoute';
}

class DetailedFoodRouteArgs {
  const DetailedFoodRouteArgs({
    this.key,
    required this.foodModel,
  });

  final Key? key;

  final FoodModel foodModel;

  @override
  String toString() {
    return 'DetailedFoodRouteArgs{key: $key, foodModel: $foodModel}';
  }
}
