import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class FoodItem extends StatefulWidget {
  final FoodModel foodModel;
  const FoodItem({super.key, required this.foodModel});
  @override
  State<StatefulWidget> createState() => FoodItemState();
}

class FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
          left: AppDimens.containerMargin,
          right: AppDimens.containerMargin,
          bottom: AppDimens.containerMargin),
      padding: const EdgeInsets.only(
          right: AppDimens.containerPadding, left: AppDimens.containerPadding),
      decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).cardColor,
            width: AppDimens.borderWidth,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(AppDimens.borderRadius_15),
          color: Theme.of(context).cardColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Theme.of(context).shadowColor,
              spreadRadius: AppDimens.spreadRadiusShadow,
              blurRadius: AppDimens.blurRadiusShadow_20,
            ),
          ]),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () => context.pushRoute(DetailedFoodRoute(
              foodModel: widget.foodModel,
            )),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: AppDimens.imageContainerHeight,
              child: AppImage(
                imageURL: widget.foodModel.url,
              ),
            ),
          ),
          const SizedBox(height: AppDimens.verticalSpacing_5),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.foodModel.name,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(height: AppDimens.verticalSpacing_5),
          FittedBox(
              fit: BoxFit.contain,
              child: Row(children: <Widget>[
                Text('${widget.foodModel.price}\$', style: AppFonts.bold_20),
                const SizedBox(
                  width: AppDimens.horizontalSpacing,
                ),
                AppButton(
                  title: StringConstants.addToCartString,
                  onTap: () {},
                  boxDecoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppDimens.P_35),
                    ),
                    gradient: AppColors.primaryGradient,
                  ),
                  textStyle: AppFonts.white_bold_14,
                )
              ]))
        ],
      ),
    );
  }
}
