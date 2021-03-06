import 'package:flutter/material.dart';
import 'package:cloud_storage/ui/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'QuickSand',
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        'details': (ctx) => DetailsScreen(),
      },
    );
  }
}
