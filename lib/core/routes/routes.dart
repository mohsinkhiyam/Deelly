import 'package:deelly/views/auth/sign_in.dart';
import 'package:deelly/views/dashboard.dart';
import 'package:flutter/material.dart';

class AppRoutes {

   static const String signIn = '/SignIn';
   static const String dashboard = '/Dashboard';


  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
 
      case signIn:
        return MaterialPageRoute(builder: (_) => SignIn());
      case dashboard:
        return MaterialPageRoute(builder: (_) => Dashboard());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
