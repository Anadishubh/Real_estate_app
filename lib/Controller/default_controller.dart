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

class HomePageController extends GetxController {
  var selectedItem = RxnString();
  var isBuySelected = true.obs;

  static const List<String> propertyTypes = [
    'New House',
    'Homes',
    'Offices',
    'Commercial property',
    'Garages',
    'Land',
    'Storage rooms',
    'Buildings',
  ];

  void selectItem(String? value) {
    selectedItem.value = value;
  }

  void toggleBuyRent(bool isBuy) {
    isBuySelected.value = isBuy;
  }
}

final List<Map<String, String>> languages = [
  {'id': 'en', 'name': 'English'},
  {'id': 'sr', 'name': 'Serbian'},
  {'id': 'bs', 'name': 'Bosnian'},
  {'id': 'tr', 'name': 'Turkish'},
  {'id': 'hu', 'name': 'Hungarian'},
  {'id': 'ct', 'name': 'Croatian'},
];

final List<String> regions = [
'Burgenland',
'Carinthia',
'Lower Austria',
'Upper Austria',
'Salzburg',
'Styria',
'Tyrol',
'Vorarlberg',
'Vienna'];
