import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/bookpage.dart';
import 'package:flutter_bmi_calculator/categories_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Store',
      initialRoute: '/',
      routes: {
        '/BookPage': (context) =>BookPage(),
        '/CategoriesPage':(context)=>CategoriesPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('Quản lý Sách'),
        ),
        body: SafeArea(
          child: CategoriesPage(),
        )
      ),
    );
  }
}
