import 'package:finance_website/utils/theme_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main_screen.dart';

void main() {
  //USED FOR THE BINDING TO BE INITIALIZED BEFORE CALLING runApp.
  WidgetsFlutterBinding.ensureInitialized();

  //SET THE ORIENTATION TO BE PORTRAIT ONLY
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Website',
      debugShowCheckedModeBanner: false,
      theme: CustomStyle.lightTheme,
      home: const MainScreen()
    );
  }
}