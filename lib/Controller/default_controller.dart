import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreenController extends GetxController {
  final PageController pageController = PageController();
  var currentIndex = 0.obs;

  void onNext() {
    if (currentIndex < 2) {
      currentIndex++;
      pageController.animateToPage(
        currentIndex.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to login page
      Get.offAndToNamed('/login'); // Using GetX for navigation
    }
  }

  void onBack() {
    if (currentIndex > 0) {
      currentIndex--;
      pageController.animateToPage(
        currentIndex.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.back();
    }
  }
}