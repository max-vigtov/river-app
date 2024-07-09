import 'package:flutter/material.dart';
import 'package:river_app/config/config.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      showSemanticsDebugger: false,
      routerConfig: appRouter,
    );
  }
}
