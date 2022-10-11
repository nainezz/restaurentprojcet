import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screen/category_meals_screen.dart';
import 'package:flutter_complete_guide/screen/filters_screen.dart';
import 'package:flutter_complete_guide/screen/meal_detail_screen.dart';
import 'package:flutter_complete_guide/screen/tab_screen.dart';
import 'screen/category_meals_screen.dart';
import 'screen/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen()
      },
    );
  }
}
