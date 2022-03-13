import 'package:animation_puzzle/screens/auth/reset_password_page.dart';
import 'package:animation_puzzle/screens/my_home_page.dart';
import 'package:animation_puzzle/screens/auth/sign_up_page.dart';
import 'package:animation_puzzle/screens/auth/my_signin_page.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    var args = settings.arguments;

    switch (settings.name) {
      case '/signIn':
        return MaterialPageRoute(
          builder: (context) => const MySingInPage(),
        );

      case '/home':
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        );

      case '/signUp':
        return MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        );

      case '/resetP':
        return MaterialPageRoute(
          builder: (context) => const ResetPasswordPage(),
        );
    }
  }
}
