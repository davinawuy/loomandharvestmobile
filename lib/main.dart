import 'package:loom_and_harvest/screens/menu.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
      ).copyWith(
        primary: Color(0xFF212121),       // Dark gray for primary
        secondary: Color(0xFFBB86FC),     // Accent purple for secondary
        surface: Color(0xFF121212),    // Very dark gray for background
        onPrimary: Color(0xFFFFFFFF),     // White text on primary color
        onSecondary: Color(0xFF000000),   // Black text on secondary color
        onSurface: Color(0xFFFFFFFF)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

