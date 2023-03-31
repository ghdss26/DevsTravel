import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/appdata.dart';
import '../partials/customappbar.dart';
import '../partials/customdrawer.dart';

class HomePage extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  TextStyle styles = TextStyle(
      fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Helvetica Neue');

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Consumer<AppData>(
        builder: (ctx, appdata, child) => Scaffold(
              key: _scaffoldKey,
              appBar: CustomAppBar(
                scaffoldKey: _scaffoldKey,
                pageContext: context,
                title: 'Pagina Home',
              ),
              drawer: CustomDrawer(
                pageContext: context,
                scaffoldKey: _scaffoldKey,
              ),
              backgroundColor: Colors.white,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child:
                          Text('Bem vinndo(a) ao Devs Travel', style: styles),
                    ),
                    Image.asset(
                      'lib/assets/devstravel.png',
                      width: 200,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text('Seu guia de viagem perfeito', style: styles),
                    )
                  ],
                ),
              ),
            ));
  }
}
