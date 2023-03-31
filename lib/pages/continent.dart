import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/appdata.dart';
import '../partials/customappbar.dart';
import '../partials/customdrawer.dart';
import '../partials/citybox.dart';

class ContinentPage extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  TextStyle styles = TextStyle(
      fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Helvetica Neue');

  void seeCityAction(context, continentIndex) {
    print(continentIndex);

    Navigator.pushNamed(context, '/listcity', arguments: continentIndex);
  }

  void cityBoxAction(pageContext, cityData) {
    Navigator.pushNamed(pageContext, '/city', arguments: cityData);
  }

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Consumer<AppData>(
        builder: (ctx, appdata, child) => Scaffold(
            key: _scaffoldKey,
            appBar: CustomAppBar(
              scaffoldKey: _scaffoldKey,
              pageContext: context,
              title: 'Escolha um Continente',
            ),
            drawer: CustomDrawer(
              pageContext: context,
              scaffoldKey: _scaffoldKey,
            ),
            backgroundColor: Colors.white,
            body: ListView.builder(
              itemCount: appdata.data.length,
              itemBuilder: (context, index) {
                var cities = [];

                for (var country in appdata.data[index]['countries']) {
                  cities.addAll(country['cities']);
                }

                return Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            "${appdata.data[index]['name']} (${cities.length})",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Helvetica Neue'),
                          ),
                        ),
                        MaterialButton(
                          child: Text(
                            'Ver Cidades',
                            style: TextStyle(
                                fontFamily: 'Helvetica Neue',
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          onPressed: () {
                            seeCityAction(context, index);
                          },
                        ),
                      ],
                    ),
                    Container(
                      height: 150,
                      margin: EdgeInsets.only(bottom: 10),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cities.length,
                        itemBuilder: (cityContext, cityIndex) {
                          return CityBox(
                              data: cities[cityIndex],
                              onTap: (cityData) {
                                cityBoxAction(context, cityData);
                              });
                        },
                      ),
                    )
                  ],
                );
              },
            )));
  }
}
