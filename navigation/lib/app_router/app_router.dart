import 'package:auto_route/auto_route.dart';
import 'package:detailed_food_view/ui/detailed_food_view.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(
      page: DetailedFoodView,
    )
  ],
)
class AppRouter extends _$AppRouter {}
