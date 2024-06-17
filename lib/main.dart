import 'package:cellphone/components/navigation_menu.dart';
import 'package:cellphone/pages/cellphone_homepage.dart';
import 'package:cellphone/pages/home_pages.dart';
import 'package:cellphone/pages/login_pages.dart';
import 'package:cellphone/pages/register_pages.dart';
import 'package:cellphone/pages/splash_pages.dart';
import 'package:cellphone/pages/testslider.dart';
import 'package:cellphone/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=>ThemeProvider(),
    child: const MyApp(),
    ),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePages(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
