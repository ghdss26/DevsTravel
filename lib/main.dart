// @dart=2.9
import 'package:devstravel/pages/favorites.dart';
import 'package:devstravel/pages/listcity.dart';
import 'package:devstravel/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/appdata.dart';
import 'pages/preload.dart';
import 'pages/home.dart';
import 'pages/continent.dart';
import 'pages/city.dart';
import 'pages/favorites.dart';

void main() => runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => AppData())],
    child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/preload': (context) => PreloadPage(),
        '/home': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/continent': (context) => ContinentPage(),
        '/listcity': (context) => ListCityPage(),
        '/city': (context) => CityPage(),
        '/favorites': (context) => FavoritesPage()
      },
      initialRoute: '/preload',
    );
  }
}
