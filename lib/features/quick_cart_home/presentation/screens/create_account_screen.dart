import 'package:flutter/material.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/core/utlis/app_icons.dart';
import 'package:quick_cart/core/utlis/media_query_values.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/account_created_screen.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppIcons.qoogle,
                      const SizedBox(
                        width: 6,
                      ),
                      const Text(
                        "Sign in with Google",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sign in with Email   ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: AppColors.primary,
                  )),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "OR",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    color: AppColors.primary,
                  )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  isCollapsed: true,
                  hintText: 'Full Name',
                  prefixIcon: Icon(
                    Icons.person,
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
              const Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AccountCreatedScreen()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Create Account",
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
      ),
    );
  }
}
