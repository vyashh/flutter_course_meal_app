import 'package:flutter/material.dart';
import './screens/filters_screen.dart';
import './screens/tabs_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'vegetarian': false,
    'vegan': false,
    'lactose': false,
  };

  void _setFilters(Map<String, bool> filterData){
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Roboto',
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                body2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                title: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
      initialRoute: '/', // default route
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) =>
            CategoryMealsScreen(), // pakt de variabel vanuit de class.
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
        FiltersScreen.routeName: (context) => FiltersScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
            builder: (context) => CategoriesScreen()); // last resort page 404
      },
      // onUnknownRoute: ,
    );
  }
}
