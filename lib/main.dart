import 'package:application1/presentation/dashboard/dashboard.dart';
import 'package:application1/presentation/profile/profile.dart';
import 'package:application1/presentation/screenLogin/screenLogin.dart';
import 'package:application1/presentation/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'presentation/dashboard/dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BinGO',
      home: ProfileScreen(),
    );
  }
}
