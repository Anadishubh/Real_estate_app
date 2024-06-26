import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nestsuche2/Constant/color_constant.dart';

import '../Controller/default_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController controller = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          'ImmoVision',
          style: TextStyle(
              fontFamily: 'Libre',
              fontWeight: FontWeight.bold,
              color: AppColors.textHeadingColor),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.network(
              'https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExeXlrdXVneHdkbWtvaTN2ZnBxeWE4ejNrZzd4OGR5bmkyZ3V6ZGFxdSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/J0CKkcwhGr3YAlJB0U/giphy.webp',
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Container(
              color: AppColors.textHeadingColor,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22, right: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                controller.toggleBuyRent(true);
                              },
                              child: Obx(
                                () {
                                  return Container(
                                    decoration: BoxDecoration(
                                        color: controller.isBuySelected.value
                                            ? AppColors.primaryColor
                                                .withOpacity(0.5)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: AppColors.primaryColor)),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 15),
                                    child: Center(
                                      child: Text(
                                        'Buy',
                                        style: GoogleFonts.libreBaskerville(
                                          textStyle: TextStyle(
                                              color:
                                                  controller.isBuySelected.value
                                                      ? Colors.white
                                                      : Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 0.5),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                controller.toggleBuyRent(false);
                              },
                              child: Obx(() {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: controller.isBuySelected.value
                                        ? Colors.white
                                        : AppColors.primaryColor
                                            .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: AppColors.primaryColor),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  child: Center(
                                    child: Text(
                                      'Rent',
                                      style: GoogleFonts.libreBaskerville(
                                        textStyle: TextStyle(
                                            color:
                                                controller.isBuySelected.value
                                                    ? Colors.black
                                                    : Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              child: CustomDropdown<String>(
                                  decoration: const CustomDropdownDecoration(
                                    expandedFillColor:
                                        AppColors.primaryColorlight,
                                    listItemDecoration: ListItemDecoration(
                                      selectedColor: Colors.white,
                                      splashColor: Colors.white,
                                    ),
                                    listItemStyle:
                                        TextStyle(color: Colors.white),
                                  ),
                                  hintText: 'Property type',
                                  items: HomePageController.propertyTypes,
                                  onChanged: controller.selectedItem.call),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.maxFinite,
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed('/option');
                                },
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 14),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Your drawn search area in Austria',
                                          style: GoogleFonts.libreBaskerville(
                                            textStyle: const TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Icon(Icons.map_outlined,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        AppColors.primaryColorlight,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                onPressed: () {
                                  Get.toNamed('/option');
                                },
                                child: Text(
                                  'Search',
                                  style: GoogleFonts.libreBaskerville(
                                    textStyle:
                                        const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primaryColorlight,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 14),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                onPressed: () {
                                  // Handle post your listing button press
                                },
                                child: Text(
                                  'Post your listing',
                                  style: GoogleFonts.libreBaskerville(
                                    textStyle:
                                        const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
