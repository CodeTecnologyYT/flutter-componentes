
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_cupertino_localizations/flutter_cupertino_localizations.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
          const Locale('en','EN'), // English
          const Locale('es','ES'), // Hebrew
      ],
      title: 'Componentes APP',
      initialRoute: '/',
      routes:getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print('Ruta llamada ${settings.name}');
        return MaterialPageRoute(
          builder:(BuildContext context) => AlertPage() 
        );  
      },
    );
  }
}