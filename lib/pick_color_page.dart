import 'package:flutter/material.dart';

class pick_color_page extends StatefulWidget {
  const pick_color_page({Key? key}) : super(key: key);

  @override
  State<pick_color_page> createState() => _pick_colorState_page();
}

class _pick_colorState_page extends State<pick_color_page> {
  double Red= 0;
  double Green= 0;
  double Blue= 0;

  void showAboutDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content:Row(
            children: <Widget> [
              Text('The colour you pick is ', style: TextStyle(fontSize: 15),),
              CircleAvatar(radius: 10,backgroundColor:Color.fromRGBO(Red.toInt(), Green.toInt(), Blue.toInt(), 1) ,)
            ],
          ),
          actions: [
            TextButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text('okay')),

          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pick your color')),
      body: Column(
        children: <Widget>[
          Container(
            child: Column(children: [
              Slider(
                thumbColor: Colors.red,
                inactiveColor: Colors.red[100],
                activeColor: Colors.red[400],
                value: Red,
                max: 255,
                label: Red.round().toString(),
                onChanged: (double value) {
                  setState(() {Red = value;});
                },
              ),
              Slider(
                thumbColor: Colors.green,
                inactiveColor: Colors.green[100],
                activeColor: Colors.green[400],
                value: Green,
                max: 255,
                label: Green.round().toString(),
                onChanged: (double value) {
                  setState(() {Green = value;});
                },
              ),
              Slider(
                thumbColor: Colors.blue,
                inactiveColor: Colors.blue[100],
                activeColor: Colors.blue[400],
                value: Blue,
                max: 255,
                label: Blue.round().toString(),
                onChanged: (double value) {
                  setState(() {Blue = value;});
                },
              ),
            ],),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Column(children: [
              Text("Color"),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(Red.toInt(),Green.toInt(),Blue.toInt(),1),
                  shape: BoxShape.circle,
                ),
              ),
              ElevatedButton.icon(   // <-- ElevatedButton
                onPressed: () {
                  //go back
                  Navigator.of(context).pop(true);
                  showAboutDialog(context);
                },
                icon: Icon(Icons.add),
                label: Text('Select the colors'),
              ),
            ],)
          //decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle)
          )
        ],
      ),
    );
  }
}
