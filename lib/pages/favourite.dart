import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nestsuche2/Constant/color_constant.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Your favourites',
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
                'https://apnagharkhoj.com/blogs/wp-content/uploads/2022/05/Choose-a-Shortlist-of-Estate-Agents.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Text(
                    'All of your favourites in the same place',
                    style: GoogleFonts.kanit(
                      textStyle: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "This is where we let you know if the price drops or new photos are uploaded.",
                    style: GoogleFonts.kanit(
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w200),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Log into your account to see them on all of your devices.',
                    style: GoogleFonts.kanit(
                      textStyle:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                    ),
                  ),
                  const SizedBox(height: 84,),
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
