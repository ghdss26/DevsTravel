import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final BuildContext pageContext;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomDrawer({required this.pageContext, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Guia de Viagens da Devs Travel',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Helvetica Neue'),
                ),
                Text(
                  'Versão 2.0',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Helvetica Neue'),
                )
              ],
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(pageContext, '/home');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.public,
              color: Colors.black,
            ),
            title: Text('Escolher Cidades'),
            onTap: () {
              Navigator.pushReplacementNamed(pageContext, '/continent');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.search,
              color: Colors.black,
            ),
            title: Text('Buscar Cidades'),
            onTap: () {
              Navigator.pushReplacementNamed(pageContext, '/search');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            title: Text('Cidades Salvos'),
            onTap: () {
              Navigator.pushReplacementNamed(pageContext, '/favorites');
            },
          ),
        ],
      ),
    );
  }
}
