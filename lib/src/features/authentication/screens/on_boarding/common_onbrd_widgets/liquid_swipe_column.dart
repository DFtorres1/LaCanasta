import 'package:flutter/material.dart';
import 'package:la_canasta/src/features/authentication/models/on_boarding_model.dart';

class LiquidSwipeContainer extends StatelessWidget {
  const LiquidSwipeContainer({
    super.key, required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context){

    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(20),
      color: model.onBrdColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisSize: MainAxisSize.max,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: model.onBrdAssetImage,
              height: size.height*0.4,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    model.onBrdTitle,
                    style: Theme.of(context).textTheme.titleLarge
                ),
                const SizedBox(height: 10),
                Text(
                    model.onBrdSubtitle,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center
                ),
              ],
            ),
            Text(model.onBrdCounter),
            const SizedBox(height: 80)
          ],
        )
    );
  }
}