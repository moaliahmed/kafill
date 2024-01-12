import 'package:flutter/material.dart';

import '../core/routes_manager.dart';
import '../core/them_manager.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.registerPartTwoRoute,
      onGenerateRoute: RouteGenerator.getRoutes,
      theme: getApplicationTheme() ,
    );
  }
}
