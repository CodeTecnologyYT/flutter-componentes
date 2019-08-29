import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compoenentes'),
      ),
      body: _lista(),
    );
  }
  Widget _lista(){
    //print(menuProvider.opciones);
    // menuProvider.cargarData().then((opciones){
      
    // });
    // return ListView(
    //   children:  _listaItems(),
    // );

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children:  _listaItems(snapshot.data,context),
        );
      },
    );
  }
    
  List<Widget> _listaItems(data,context) {
   final List<Widget> opciones=[];

   data.forEach((opt){
      final widgetTemp= ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){
          //  final route =MaterialPageRoute(builder: (context)=>AlertPage());
          //  Navigator.push(context, route);
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones..add( widgetTemp )
              ..add( Divider() );
   });
   return opciones;
    // return [
    //   ListTile(title: Text('Hola Mundo')),
    //   Divider(),
    //   ListTile(title: Text('Hola Mundo')),
    //   ListTile(title: Text('Hola Mundo')),
    //   ListTile(title: Text('Hola Mundo')),
    //   ListTile(title: Text('Hola Mundo'))
    // ];
  }
}