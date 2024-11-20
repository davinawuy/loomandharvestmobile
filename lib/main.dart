import 'package:loom_and_harvest/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Loom and Harvest',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            brightness: Brightness.dark,
            primarySwatch: Colors.grey,
          ).copyWith(
            primary: const Color(0xFF212121),       // Dark gray for primary
            secondary: const Color(0xFFBB86FC),     // Accent purple for secondary
            surface: const Color(0xFF121212),       // Very dark gray for background
            onPrimary: const Color(0xFFFFFFFF),     // White text on primary color
            onSecondary: const Color(0xFF000000),   // Black text on secondary color
            onSurface: const Color(0xFFFFFFFF),
          ),
          useMaterial3: true,
        ),
        home: LoginPage(),
      ),
    );
  }
}
