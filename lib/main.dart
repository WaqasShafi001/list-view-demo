import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Country Food',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Country Food'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // const color = const Color(0xFFffcccb);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 230,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage("assets/images/header_photo.jpg"),
                        fit: BoxFit.fill),
                    border: Border.all(
                      color: Colors.red,
                      width: 4,
                    ),
                  ),
                ),
                Center(
                    child: Text("Food For Life",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 28,
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
            child: Text("Categories",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
              height: 50,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // reverse: true,
                addAutomaticKeepAlives: false,
                children: <Widget>[
                  customHorizontalCard(0),
                  customHorizontalCard(1),
                  customHorizontalCard(3),
                  customHorizontalCard(4),
                  customHorizontalCard(5),
                  customHorizontalCard(6),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
            child: Text(
              "Top Categories",
              style: TextStyle(
                  color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              // reverse: true,
              addAutomaticKeepAlives: false,
              children: <Widget>[
                customHorizontalCard2(0),
                customHorizontalCard2(1),
                customHorizontalCard2(3),
                customHorizontalCard2(4),
                customHorizontalCard2(5),
                customHorizontalCard2(6),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
            child: Text(
              "Top Categories",
              style: TextStyle(
                  color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              // reverse: true,
              addAutomaticKeepAlives: false,
              children: <Widget>[
                customHorizontalCard2(0),
                customHorizontalCard2(1),
                customHorizontalCard2(3),
                customHorizontalCard2(4),
                customHorizontalCard2(5),
                customHorizontalCard2(6),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //categotries first list
  Widget customHorizontalCard(int index) {
    List<String> socialAccNames = [
      "Fast Food",
      "Desi Food",
      "Chinese",
      "Masala Food",
      "Ice Creams",
      "Drinks",
      "soops"
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Chip(
        padding: EdgeInsets.all(5),
        backgroundColor: Colors.red,
        label: Text(socialAccNames[index],
            style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );

    // Container(
    //   height: 55,
    //   width: 120,
    //   child: Card(
    //     color: Colors.red,
    //     elevation: 5,
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    //     child: Center(
    //       child:
    //     ),
    //   ),
    // );
  }

  //top categories listView
  Widget customHorizontalCard2(int index) {
    List<String> topCategoriesImagesAssets = [
      "assets/images/burger_jpeg.jpg",
      "assets/images/american_food.jpg",
      "assets/images/coffee_food.jpeg",
      "assets/images/burger_jpeg.jpg",
      "assets/images/burger_jpeg.jpg",
      "assets/images/burger_jpeg.jpg",
      "assets/images/burger_jpeg.jpg"
    ];

    List<String> topCategoriesNames = [
      "Burger",
      "American",
      "Pizza",
      "Coffee",
      "Chips",
      "Haandi",
      "Shakes"
    ];
    return Container(
      height: 65,
      width: 150,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(topCategoriesImagesAssets[index]))),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(topCategoriesNames[index],
                  style: TextStyle(color: Colors.red, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
