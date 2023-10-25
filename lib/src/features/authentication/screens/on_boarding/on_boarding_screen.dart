import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context){
    final controller = OnBoardingController(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: controller.pages,
            enableSideReveal: true,
            liquidController: controller.lqcontroller,
            onPageChangeCallback: controller.onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
          ),
          Positioned(
            bottom: 45,
            child: OutlinedButton(
              onPressed: () {
                if(controller.lqcontroller.currentPage >= 2){
                  Get.toNamed('/welcome');
                } else {
                  controller.animateToNextSlide();
                }
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.red),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            )
          ),
          Positioned(
            top: 25,
            right: 20,
            child: TextButton(
              onPressed: () => Get.toNamed('/welcome'),
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.grey),
              ),
            )
          ),
          Obx(
            () => Positioned(
              bottom: 15,
              child: AnimatedSmoothIndicator(
                count: 3,
                activeIndex: controller.currentPage.value,
                effect: const WormEffect(
                  activeDotColor: Color(0xFF272727),
                  dotHeight: 5,
                  dotWidth: 30
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}