import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/image_strings.dart';
import '../../../constants/text_string.dart';
import '../models/on_boarding_model.dart';
import '../screens/on_boarding/common_onbrd_widgets/liquid_swipe_column.dart';

class OnBoardingController extends GetxController{
  final lqcontroller = LiquidController();
  RxInt currentPage = 0.obs;

  final BuildContext context;
  final List<LiquidSwipeContainer> pages;

  OnBoardingController(this.context) : pages = [
    LiquidSwipeContainer(
        model: OnBoardingModel(
          onBrdColor: Theme.of(context).colorScheme.secondaryContainer,
          onBrdAssetImage: const AssetImage(onBoardingPotatoes),
          onBrdTitle: lcOnBoardTitle1,
          onBrdSubtitle: lcOnBoardSubtitle1,
          onBrdCounter: lcOnBoardCounter1,
        )
    ),
    LiquidSwipeContainer(
        model: OnBoardingModel(
          onBrdColor: Theme.of(context).colorScheme.tertiary,
          onBrdAssetImage: const AssetImage(onBoardingHoney),
          onBrdTitle: lcOnBoardTitle2,
          onBrdSubtitle: lcOnBoardSubtitle2,
          onBrdCounter: lcOnBoardCounter2,
        )
    ),
    LiquidSwipeContainer(
      model: OnBoardingModel(
        onBrdColor: Theme.of(context).colorScheme.tertiaryContainer,
        onBrdAssetImage: const AssetImage(onBoardingCupcakes),
        onBrdTitle: lcOnBoardTitle3,
        onBrdSubtitle: lcOnBoardSubtitle3,
        onBrdCounter: lcOnBoardCounter3,
      ),
    ),
  ];

  skip() => Get.toNamed('/welcome');
  animateToNextSlide() {
    int nextPage = lqcontroller.currentPage + 1;
    lqcontroller.animateToPage(page: nextPage);
  }
  onPageChangeCallback(int activePageIndex) => currentPage.value = activePageIndex;

}