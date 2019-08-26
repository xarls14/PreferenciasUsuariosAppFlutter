import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario{

  //Patrón singleton
  static PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();
  
  factory PreferenciasUsuario(){
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs()async{
    this._prefs = await SharedPreferences.getInstance();
  }

  //GET y SET del genero
  get genero{
    return _prefs.getInt('genero') ?? 1;//si no existe sera 1
  }

  set genero ( int value ){
    _prefs.setInt('genero', value);
  }

  get colorSecundario{
    return _prefs.getBool('colorSecundario') ?? false;//si no existe sera 1
  }

  set colorSecundario ( bool value ){
    _prefs.setBool('colorSecundario', value);
  }

  get nombreUsuario{
    return _prefs.getString('nombreUsuario') ?? '';//si no existe sera 1
  }

  set nombreUsuario ( String value ){
    _prefs.setString('nombreUsuario', value);
  }

  get ultimaPagina{
    return _prefs.getString('nombreUsuario') ?? 'home';//si no existe sera 1
  }

  set ultimaPagina ( String value ){
    _prefs.setString('nombreUsuario', value);
  }


}