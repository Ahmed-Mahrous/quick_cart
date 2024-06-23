import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/core/utlis/app_icons.dart';
import 'package:quick_cart/core/utlis/media_query_values.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/login_screen.dart';

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: context.width,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcons.quickCart,
            const SizedBox(
              width: 8,
            ),
            const Text(
              'QuickCart',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/check-cart.png'),
              const Text(
                'Your account created successfully.',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
