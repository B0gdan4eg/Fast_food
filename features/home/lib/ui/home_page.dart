import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:home/bloc/bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.shadowWhite,
        appBar: AppBar(
          title: Text(
            StringConstants.appBarTitle,
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          backgroundColor: AppColors.lightLettuce,
          elevation: AppDimens.elevetion_0,
          centerTitle: true,
        ),
        body: BlocProvider<MenuViewBloc>(
            create: (BuildContext context) => MenuViewBloc(
                fetchListOfFoodUseCase:
                    appLocator.get<FetchListOfFoodUseCase>()),
            child: BlocBuilder<MenuViewBloc, MenuViewState>(
              builder: (BuildContext context, MenuViewState state) {
                if (state is ErrorState) {
                  return Center(
                    child: Text(state.errorMessage),
                  );
                }
                if (state is LoadingState) {
                  return const AppLoaderWidget();
                }
                if (state is LoadedState) {
                  return Container(
                      height: MediaQuery.sizeOf(context).height,
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.only(top: AppDimens.P_15),
                        scrollDirection: Axis.vertical,
                        child: Wrap(
                          children: List.generate(
                            state.food.length,
                            (index) => SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: FoodItem(foodModel: state.food[index]),
                            ),
                          ),
                        ),
                      ));
                }
                return Container();
              },
            )));
  }
}
