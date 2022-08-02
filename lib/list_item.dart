import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Color color;

  //"required this.color" pass color through a constructor
  const ListItem({Key?key, required this.color});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 80,
      color: color,
      margin: EdgeInsets.only(bottom: 10),
    );
  }
}