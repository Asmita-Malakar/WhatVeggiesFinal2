import 'package:flutter/material.dart';

class VegetablesPage extends StatefulWidget {
  @override
  _VegetablesPageState createState() => _VegetablesPageState();
}

class _VegetablesPageState extends State<VegetablesPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Vegetables Of Week'),
      ),
    );
  }
}