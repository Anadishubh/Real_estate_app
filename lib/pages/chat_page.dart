import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nestsuche2/Constant/color_constant.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Chat',
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
                'https://herobot.app/wp-content/uploads/2022/11/11-Reasons-Why-A-Chat-Application-Is-Great-For-Business_1.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Text(
                    'Log into your account so you can see your conversations',
                    style: GoogleFonts.kanit(
                      textStyle: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "This is where you can chat with listers and answer new messages that you receive. All without leaving immoVision.",
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
                  const SizedBox(height: 22,),
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
