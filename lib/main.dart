import 'package:deelly/core/routes/routes.dart';
import 'package:deelly/core/theme/app_theme.dart';
import 'package:deelly/core/utils/responsive_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
      //
      initialRoute: AppRoutes.dashboard,
      onGenerateRoute: AppRoutes.generateRoute,
      builder: (context, child) {
        ResponsiveConfig.init(context);
        return child!;
      },
    );
  }
}
