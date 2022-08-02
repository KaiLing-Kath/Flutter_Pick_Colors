import 'package:flutter/material.dart';
import 'list_item.dart';
//import 'shades_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  /*
  //direct navigation
  void navigateToShadePage(
      BuildContext context,
      MaterialAccentColor color,){
    Navigator.push(
        context,
        MaterialPageRoute(
        builder: (BuildContext context){
          return shadesPage(color: color);
        }),
    );
  */

  /*//static navigation
  void navigateToShadePageStatic(
      BuildContext context,
      MaterialAccentColor color,){
    Navigator.pushNamed(
      context,
      '/shades',
      arguments: color,
    );
  */
  void navigateToShadePageDynamic(
    BuildContext context,
    MaterialAccentColor color,
  ) {
    Navigator.pushNamed(
      context,
      '/shades',
      arguments: color,
    );
  }

  void navigatePickColorDynamic(
    BuildContext context,
  ) {
    Navigator.pushNamed(
      context,
      '/pickColor',
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Colors')),
      body: ListView.builder(
        //the length of the item to build
        itemCount: Colors.accents.length,
        //build items
        itemBuilder: (BuildContext context, int index) {
          //can also use accents[index]
          //return ListItem(color: Colors.accents.elementAt(index)
          return GestureDetector(
            onTap: () {
              navigateToShadePageDynamic(
                  context, Colors.accents.elementAt(index));
            },
            child: ListItem(
              color: Colors.accents.elementAt(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          // onPressed: () => navigatePickColorDynamic(context)
          onPressed: () {
            navigatePickColorDynamic(context);
          }),
    );
  }
}
