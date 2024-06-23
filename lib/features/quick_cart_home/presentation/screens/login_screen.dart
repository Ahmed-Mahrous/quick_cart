import 'package:flutter/material.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/core/utlis/app_icons.dart';
import 'package:quick_cart/core/utlis/media_query_values.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/account_created_screen.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Log in',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                isCollapsed: true,
                hintText: 'Email',
                prefixIcon: Icon(
                  Icons.email_rounded,
                  color: AppColors.primary,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: AppColors.secondary,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                isCollapsed: true,
                hintText: 'Password',
                prefixIcon: Icon(
                  Icons.password,
                  color: AppColors.primary,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: AppColors.secondary,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Log in",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
