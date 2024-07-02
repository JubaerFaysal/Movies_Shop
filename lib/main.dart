import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/categories/watch_later.dart';
import 'package:shopping_app/pages/Intro_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Watch_later(),
    builder: (context, child) => const MaterialApp(
       debugShowCheckedModeBanner: false, 
       home: Intropage(),
       ),
       );
  }
}