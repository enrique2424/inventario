import 'package:flutter/material.dart';
import 'package:inventario/core/theme/app_theme.dart';
import 'package:inventario/features/autentication/presentation/pages/inventario_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inventario',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const InventarioPage(),
    );
  }
}
