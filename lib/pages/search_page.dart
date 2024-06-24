import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nestsuche2/Constant/color_constant.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Searches',
          style: GoogleFonts.kanit(
              textStyle: const TextStyle(color: Colors.white)),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image.network(
                'https://kit8.net/wp-content/uploads/edd/2021/12/search_for_real_estate_preview.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Text(
                    'All of your searches saved in the same place',
                    style: GoogleFonts.kanit(
                      textStyle: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Save your most common searches so you can easily reuse them. We'll also let you know when there are new listings that match your searches.",
                    style: GoogleFonts.kanit(
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w200),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Log into your account to see the searches on all of your devices.',
                    style: GoogleFonts.kanit(
                      textStyle:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                    ),
                  ),
                  const SizedBox(height: 58,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColorlight,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                        ),
                        onPressed: () {
                          Get.offAndToNamed('/login');
                        },
                        child: Text('Log in to your account',style: GoogleFonts.kanit(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white)),),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
