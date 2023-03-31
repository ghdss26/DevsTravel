import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool hideSearch;
  final bool showBack;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final BuildContext pageContext;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.hideSearch = false,
    this.showBack = false,
    required this.scaffoldKey,
    required final BuildContext pageContext, // Marca la variable como final
  })  : this.pageContext =
            pageContext, // Inicializa la variable pageContext en el constructor
        super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    void searchAction() {
      Navigator.pushReplacementNamed(pageContext, '/search');
    }

    IconButton drawerIcon = IconButton(
        icon: Icon(Icons.menu, color: Colors.black, size: 30),
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        });

    IconButton backIcon = IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
        onPressed: () {
          Navigator.pop(pageContext);
        });

    IconButton? leadingButton = drawerIcon;

    if (showBack) {
      leadingButton = backIcon;
    }

    return AppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      leading: leadingButton,
      actions: <Widget>[
        !hideSearch
            ? IconButton(
                icon: Icon(Icons.search, color: Colors.black, size: 40),
                onPressed: searchAction,
              )
            : Container()
      ],
    );
  }
}
