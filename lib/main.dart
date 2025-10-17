import 'package:deelly/core/routes/routes.dart';
import 'package:deelly/core/theme/app_theme.dart';
import 'package:deelly/core/utils/responsive_config.dart';
import 'package:deelly/providers/auth_provider.dart';
import 'package:deelly/providers/deal_selection_provider.dart';
import 'package:deelly/providers/discount_filter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
     providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => DealSelectionProvider()),
        ChangeNotifierProvider(create: (_) => DiscountFilterProvider()),
      ],
    child: const MainApp()));
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
       initialRoute: AppRoutes.authWrapper,
      // initialRoute: AppRoutes.dashboard,
      onGenerateRoute: AppRoutes.generateRoute,
      builder: (context, child) {
        ResponsiveConfig.init(context);
        return child!;
      },
    );
  }
}
