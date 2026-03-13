import 'package:flutter/material.dart';
import 'package:follow_app/pages/home_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async  {
  await Hive.initFlutter();
  await Hive.openBox("Note");
  runApp(const FollowApp());
}

class FollowApp extends StatelessWidget {
  const FollowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}

