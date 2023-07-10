import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class NumberIncreasing extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NumberIncreasingState();
}

class NumberIncreasingState extends State<NumberIncreasing> {
  @override
  Widget build(BuildContext context) {
    // TODO add increment and decrement logic
    return Container(
      width: MediaQuery.sizeOf(context).width / 3,
      padding: const EdgeInsets.symmetric(
          vertical: AppDimens.P_8, horizontal: AppDimens.P_3),
      decoration: const BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.all(Radius.circular(
          AppDimens.borderRadius_30,
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove,
              color: AppColors.white,
            ),
          ),
          const SizedBox(
            width: AppDimens.horizontalSpacing_10,
          ),
          const Text(
            '1', //TODO remove hardcode
            style: TextStyle(
              color: AppColors.white,
            ),
          ),
          const SizedBox(
            width: AppDimens.horizontalSpacing_10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
