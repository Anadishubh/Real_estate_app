import 'package:get/get.dart';

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