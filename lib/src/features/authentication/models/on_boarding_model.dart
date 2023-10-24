import 'package:flutter/material.dart';

class OnBoardingModel {
  final AssetImage onBrdAssetImage;
  final String onBrdTitle;
  final String onBrdSubtitle;
  final String onBrdCounter;
  final Color? onBrdColor;

  OnBoardingModel({
    required this.onBrdAssetImage,
    required this.onBrdTitle,
    required this.onBrdSubtitle,
    required this.onBrdCounter,
    required this.onBrdColor,
  });
}