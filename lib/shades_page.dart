import 'package:flutter/material.dart';
import 'package:flutter_navigator/list_item.dart';

class shadesPage extends StatelessWidget {
  shadesPage({required this.color});
  final MaterialAccentColor color;

  @override
  Widget build(BuildContext context) {
// this list should put is here if put it before override will
// have error because
    final List <Color> accentShades =[
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700,
    ];
    return Scaffold(
      appBar:
          // centerTitle: true -to make the title to center
      AppBar(title: Text('Shades'), backgroundColor: color,),
      body: ListView.builder(
        itemCount: accentShades.length,
        itemBuilder: (BuildContext context,int index) {
          return ListItem(color: accentShades[index],);
        },
      ),
    );
  }
}