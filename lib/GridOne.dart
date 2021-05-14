//[4/24, 8:06 PM] Padmanaban Saravanan


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class GridOne extends StatefulWidget {
@override
_GridOneState createState() => _GridOneState();
}
class _GridOneState extends State<GridOne> {
  set growableList(List<int> growableList) {
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        body: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              new Container(
                child: new Card(
                  elevation: 15.0,
                  child: new Column(
                    children: <Widget>[
                      new Image.network(
                        "https://www.parasperfumers.com/upload/product_ecom/Custard-Apple-Seed-Oil.jpg",
                        alignment: Alignment.center,
                        height: 150.0,
                        width: 200.0,
                        fit: BoxFit.cover,),
                      new SizedBox(height: 5.0,),
                      new Text("Custard",
                        style: TextStyle(color: Colors.black, fontSize: 28),)
                    ],
                  ),
                ),
              ),
              new Container(
                child: new Card(
                  elevation: 15.0,
                  child: new Column(
                    children: <Widget>[
                      new Image.network(
                        "https://freshpoint.com/wp-content/uploads/commodity-kumquat.jpg",
                        alignment: Alignment.center,
                        height: 150.0,
                        width: 200.0,
                        fit: BoxFit.cover,),
                      new SizedBox(height: 5.0,),
                      new Text("Kumquat",
                        style: TextStyle(color: Colors.black, fontSize: 28),)
                    ],
                  ),
                ),
              ),
              new Container(
                child: new Card(
                  elevation: 15.0,
                  child: new Column(
                    children: <Widget>[
                      new Image.network(
                        "https://cdn.shopify.com/s/files/1/2336/3219/products/shutterstock_77846398eureka2_x850.jpg?v=1554665666",
                        alignment: Alignment.center,
                        height: 150.0,
                        width: 200.0,
                        fit: BoxFit.cover,),
                      new SizedBox(height: 5.0,),
                      new Text("Lemon",
                        style: TextStyle(color: Colors.black, fontSize: 28),)
                    ],
                  ),
                ),
              ),
              new Container(
                child: new Card(
                  elevation: 15.0,
                  child: new Column(
                    children: <Widget>[
                      new Image.network(
                        "https://universityhealthnews.com/media/benefits-of-lime.jpg",
                        alignment: Alignment.center,
                        height: 150.0,
                        width: 200.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 5.0,),
                      new Text("Lime",
                        style: TextStyle(color: Colors.black, fontSize: 28),)
                    ],
                  ),
                ),
              ),
              fruits("Ashwagandha",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Eggplants",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Garden Huckleberries/Black NightShade",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Goji Berry",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Gooseberries",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Ground Cherry",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Naranjilla",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Okra",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Pepino Melon",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Sorrel",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Tamarillo",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Bannana Peppers",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Bell Peppers",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Cayenne Pepper",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Cubanelle Pepper",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Fresno Chilli",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Jalapeño Pepper",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Habanero Pepper",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Paprika",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Pimiento Pepper",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Pepperoncini",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Poblano Pepper",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Serrano Pepper",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Shishito Pepper",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Fingerling Potato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Katahdin Potato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Purple/Blue Potato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Ratte Potato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Red Potato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Russet Potato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("White Potato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Yukon Gold Potato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Beefsteak Tomato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Better Boy Tomato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Bush Tomato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Campari Tomato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Cherry Tomato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Early Girl Tomato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Grape Tomato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Roma Tomato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Tomatillo",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
              fruits("Yellow Tomato",
                  "https://universityhealthnews.com/media/benefits-of-lime.jpg"),
            ]
        ),
      );
    }
  }

  fruits(fruit, image) {
    return (
        new Container(
          child: new Card(
            elevation: 15.0,
            child: new Column(
              children: <Widget>[
                new Image.network(image, alignment: Alignment.center,
                  height: 150.0,
                  width: 200.0,
                  fit: BoxFit.cover,
                ),
                new SizedBox(height: 5.0,),
                new Text(
                  fruit, style: TextStyle(color: Colors.black, fontSize: 28),)
              ],
            ),
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}
