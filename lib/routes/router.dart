import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/pages/home.dart';
import 'package:spotify_clone/pages/login/login.dart';
import 'package:spotify_clone/state/auth.dart';

class AppRouter {
  static const String home = '/';
  static const String login = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => Provider.of<AuthState>(context).logInState ? Home() : Login()
        );
      case login:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => Login()
        );
      default:
        return null;
    }
  }
}