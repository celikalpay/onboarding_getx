import 'package:flutter/material.dart';
import '../models/onboarding_info.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      // go to home page
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
      "assets/order.png",
      "Order Your Food",
      "Now you can order food any time right from your mobile.",
    ),
    OnboardingInfo(
      "assets/cook.png",
      "Cooking Safe Food",
      "We are maintain saffty and We keep clean while making food.",
    ),
    OnboardingInfo(
      "assets/deliver.png",
      "Quick Delivery",
      "Oders your favorite meals will be immediately deliver.",
    ),
  ];
}
