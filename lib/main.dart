import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'help.dart';
import 'Nutrients.dart';
import 'GridOne.dart' as gridone;
import 'GridTwo.dart' as gridtwo;
//Pages
import './fruits.dart';
import 'Vegetable.dart';
import "settings.dart";
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>with SingleTickerProviderStateMixin {

  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(// here the desired height
          backgroundColor: Colors.green[400],
          title:
          Center(
            child: Text('Careful Carbs', style: TextStyle(
                color: Colors.black
            ),),
          ),
          iconTheme: new IconThemeData(color: Colors.black),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search,), onPressed: () { },),],
          bottom: new TabBar(
            controller: controller,
            indicatorWeight: 5.0,
            indicatorColor: Colors.green[900],
            tabs: <Widget>[
              new Tab(text: "Fruits",),
              new Tab(text: "Vegetables",)
            ],
          ),
        ),

        body: new TabBarView(
          controller: controller,
          children: <Widget>[

            new gridone.GridOne(),
            new gridtwo.GridTwo()

          ],
        ),

        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text('John', textAlign: TextAlign.center,),
                accountEmail: new Text('JohnEvergreen@yahoo.com', textAlign: TextAlign.center,),
                decoration: BoxDecoration(
                    color: Colors.lightGreen[400],
                    border: Border.all(
                        width: 3
                    )
                ),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage('https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
                ),
              ),
              new ListTile(
                leading: Icon(Icons.arrow_forward),
                title: new Text('Fruits Of Week'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => FruitsPage())
                  );
                },
              ),
              new ListTile(
                leading: Icon(Icons.help_outline),
                title: new Text('Vegetables Of Week'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => VegetablesPage())
                  );
                },
              ),
              new ListTile(
                leading: Icon(Icons.settings),
                title: new Text('Settings'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => settingsPage())
                  );
                },
              ),
              new ListTile(
                leading: Icon(MdiIcons.help),
                title: new Text('Help'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => helpPage())
                  );
                },
              ),
              new ListTile(
                leading: Icon(MdiIcons.notebook),
                title: new Text('Importance Of Nutrients'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => nutrientPage())
                  );
                },
              ),
            ],
          ),
        ),

        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.green[300],
          backgroundColor: Colors.green[300],
          buttonBackgroundColor: Colors.green[300],
          height: 60,
          items: <Widget>[
            Icon(MdiIcons.storefront,size: 19, color: Colors.black,),
            Icon(MdiIcons.homeOutline,size: 19, color: Colors.black,),
            Icon(MdiIcons.cash,size: 19, color: Colors.black,),
          ],
          animationDuration: Duration(
              milliseconds: 240

          ),
          index: 1,
          animationCurve: Curves.decelerate
          ,
          onTap: (index){
            debugPrint("Current Index is $index");
          },
        ),
      ),
    );
  }
}