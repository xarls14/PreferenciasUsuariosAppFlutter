import 'package:flutter/material.dart';
//import 'package:preferenciasusuariosapp/src/pages/settings_page.dart';
import 'package:preferenciasusuariosapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de Usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario'),
          Divider(),
          Text('Género'),
          Divider(),
          Text('Nombre usuario'),
          Divider(),
        ],
      ),
    );
  }
}