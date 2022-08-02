import 'package:flutter/material.dart';
import 'package:flutter_navigator/home_page.dart';
import 'package:flutter_navigator/shades_page.dart';
import 'package:flutter_navigator/pick_color_page.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      onGenerateRoute: (settings){
        switch(settings.name){
          case '/shades':
            final data =settings.arguments as MaterialAccentColor;
            return MaterialPageRoute(builder: (_)=> shadesPage(color: data));
            break;
          case '/pickColor':
            return MaterialPageRoute(builder: (_)=> pick_color_page());
            break;
        }
      },
      // routes: {
      //   '/shades': (context)=>shades_with_params(),
      //   //'/pickColor': (context)=>pick_color_with_params(),
      // },
    );
  }
}



