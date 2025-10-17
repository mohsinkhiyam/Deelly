import 'package:deelly/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    Future.microtask(() async {
      final prefs = await SharedPreferences.getInstance();
      final userToken = prefs.getString('userToken');
      if (userToken == null) {
        Navigator.pushReplacementNamed(context, AppRoutes.signIn);
      } else {
        Navigator.pushReplacementNamed(context, AppRoutes.dashboard);
      }
    });

    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
