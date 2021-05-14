import 'package:flutter/material.dart';

class FruitsPage extends StatefulWidget {
  @override
  _FruitPageState createState() => _FruitPageState();
}

class _FruitPageState extends State<FruitsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Fruits Of Week'),
      ),
    );
  }
}