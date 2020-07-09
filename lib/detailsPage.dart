import 'package:flutter/material.dart';
import 'package:flutter_darkmode_ui/allStyle/text_styles.dart';
import 'dart:math';

class DetailsPage extends StatefulWidget {
  final String firstName, lastName, image, description;
  int price;
  DetailsPage(
      {@required this.description,
      @required this.firstName,
      @required this.image,
      @required this.lastName,
      @required this.price});
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 1 / 4 + 25,
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 80, left: 20, right: 20),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.chat_bubble, color: Colors.blue[800]),
                            Text("chat",
                                style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 0.5,
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.add_shopping_cart,
                              color: Colors.blue[800],
                            ),
                            Text(
                              "add to cart",
                              style: TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 0.5,
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height * 3 / 4 + 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 30, left: 15, right: 15),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                Text("back",
                                    style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 0.5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Container(
                              height: 30,
                              width: 30,
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                      child: Icon(
                                    Icons.add_shopping_cart,
                                    size: 25,
                                    color: Colors.white,
                                  )),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                        height: 8,
                                        width: 8,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8.0)))),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 50),
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(250))),
                          ),
                        ),
                        Center(
                          child: Hero(
                              tag: widget.image,
                              child: Container(
                                  height: 300,
                                  width: 300,
                                  margin: EdgeInsets.only(bottom: 70),
                                  child: Image.asset(
                                    widget.image,
                                    fit: BoxFit.cover,
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 250.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.primaries[Random()
                                          .nextInt(Colors.primaries.length)],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Center(
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 17,
                                    height: 17,
                                    decoration: BoxDecoration(
                                      color: Colors.primaries[Random()
                                          .nextInt(Colors.primaries.length)],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(17)),
                                    ),
                                  ),
                                  Container(
                                    width: 17,
                                    height: 17,
                                    decoration: BoxDecoration(
                                      color: Colors.primaries[Random()
                                          .nextInt(Colors.primaries.length)],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(17)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.only(top: 25.0),
                      height: 150,
                      margin: EdgeInsets.only(left: 40, right: 20),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                widget.firstName,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 1.0),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                widget.lastName,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 1.0),
                              ),
                              Spacer()
                            ],
                          ),
                          Text(
                            "${widget.price.toString()} DA",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(widget.description,
                              style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 0.5,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
