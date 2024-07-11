import 'package:flutter/material.dart';
import 'package:locations_with_yandex/screens/home_screen.dart';
import 'package:locations_with_yandex/servises/servise.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocationService.determinePosition();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}