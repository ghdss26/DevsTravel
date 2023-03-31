import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/appdata.dart';
import '../partials/customappbar.dart';
import '../partials/customdrawer.dart';
import '../partials/citybox.dart';

class ListCityPage extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  TextStyle styles = TextStyle(
      fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Helvetica Neue');

  void cityBoxAction(pageContext, dynamic cityData) {
    if (cityData != null && cityData is Map<String, dynamic>) {
      final cityName = cityData['name'] ?? 'Unknown city';

      Navigator.pushNamed(pageContext, '/city', arguments: cityData);
    }
  }

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    final continentIndex = ModalRoute.of(context)!.settings.arguments as int;

    return Consumer<AppData>(builder: (ctx, appdata, child) {
      var cities = [];

      for (var country in appdata.data[continentIndex]['countries']) {
        cities.addAll(country['cities']);
      }

      return Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(
          scaffoldKey: _scaffoldKey,
          pageContext: context,
          title:
              "${appdata.data[continentIndex]['name']} (${cities.length} cidades) ",
          showBack: true,
        ),
        drawer: CustomDrawer(
          pageContext: context,
          scaffoldKey: _scaffoldKey,
        ),
        backgroundColor: Colors.white,
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(cities.length, (index) {
            return CityBox(
              data: cities[index],
              onTap: (cityData) {
                cityBoxAction(context, cityData);
              },
            );
          }),
        ),
      );
    });
  }
}
