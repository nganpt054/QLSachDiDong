import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/category_items.dart';
import 'package:flutter_bmi_calculator/fake_data.dart';
class CategoriesPage extends StatelessWidget{
  static const String routeName='/CategoriesPage';
  @override
  Widget build(BuildContext context){
    return GridView(
      padding: EdgeInsets.all(12),
      children: FAKE_CATEGORIES.map((eachCategory) => CategoryItem(category: eachCategory)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
      ),
    );
  }
}
