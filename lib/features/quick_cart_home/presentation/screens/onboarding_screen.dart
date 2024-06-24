import 'package:flutter/material.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/auth_gate.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/home_screen.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/animated_dot.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/onboarding_content.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _selctedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            //onBoarding content
            SizedBox(
              height: 500,
              child: PageView.builder(
                itemCount: onboardingData.length,
                onPageChanged: (value) {
                  setState(() {
                    _selctedIndex = value;
                  });
                },
                itemBuilder: (context, index) {
                  return OnboardContent(
                    illustration: onboardingData[index]['illustration'],
                    title: onboardingData[index]['title'],
                    text: onboardingData[index]['text'],
                  );
                },
              ),
            ),
            const Spacer(),

            // Animated Dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingData.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: AnimatedDot(isActive: _selctedIndex == index),
                ),
              ),
            ),
            const Spacer(flex: 2),

            // Get started Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  //backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                "Get Started".toUpperCase(),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> onboardingData = [
  {
    "illustration": "assets/images/quickcart-onboarding.png",
    "title": "All your favorites",
    "text": "Order from the best local stors \nwith easy, on-demand delivery.",
  },
  {
    "illustration": "assets/images/off.png",
    "title": "Great offers",
    "text":
        "Great offers for all customers via Online Pay\nand others payment methods.",
  },
];
