import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "iPhone",
                description: "iPhone is the stylist phone ever",
                price: 1000,
                image: "iPhone.jpg"),
            ProductBox(
                name: "Pixel",
                description: "Pixel is the most featureful phone ever",
                price: 800,
                image: "Pixel.jpg"),
            ProductBox(
                name: "Laptop",
                description: "Laptop is most productive development tool",
                price: 2000,
                image: "Laptop.jpg"),
            ProductBoxNetwork(
                name: "Tablet",
                description: "Tablet is the most useful device ever for meeting",
                price: 1500,
                URL: "https://www.quickpos-thailand.com/web/image/product.template/356/image"),
            ProductBoxNetwork(
                name: "Pendrive",
                description: "Pendrive is useful storage medium",
                price: 100,
                URL: "https://m.media-amazon.com/images/I/71qOWNxv4jL.jpg"),
            ProductBoxNetwork(
                name: "Floppy Drive",
                description: "Floppy drive is useful rescue storage medium",
                price: 20,
                URL: "https://cdn.retrostylemedia.co.uk/media/img_609bee39f1b57.jpg"),
          ],
        ));
  }
}
class ProductBox extends StatelessWidget {
  ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  }) : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("assets/appimages/" + image),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(this.name,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              Text(this.description),
                              Text("Price: " + this.price.toString()),
                            ],
                          )))
                ])));
  }
}
class ProductBoxNetwork extends StatelessWidget {
  ProductBoxNetwork({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.URL,
  }) : super(key: key);
  final String name;
  final String description;
  final int price;
  final String URL;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.network(URL),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(this.name,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              Text(this.description),
                              Text("Price: " + this.price.toString()),
                            ],
                          )))
                ])));
  }
}