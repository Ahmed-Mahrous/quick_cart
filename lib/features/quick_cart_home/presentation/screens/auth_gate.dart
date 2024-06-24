import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/home_screen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SignInScreen(
          resizeToAvoidBottomInset: false,
          showPasswordVisibilityToggle: true,
          providers: [
            EmailAuthProvider(),
            GoogleProvider(
                clientId:
                    '969089339160-sam96s47u8ukd251isns9mt4q5oa7hbj.apps.googleusercontent.com'),
          ],
          actions: [
            AuthStateChangeAction<SignedIn>((context, state) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            }),
            AuthStateChangeAction<UserCreated>((context, state) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            }),
          ],
        ),
      ),
    );
  }
}
