import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(top: 40, left: 20, right: 20),
              height: height * 1 / 3 + 75,
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Acceuil",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "slabo"),
                      ),
                      Icon(Icons.notifications, size: 25)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 50,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Search",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25))
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, int) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                                child: Text("value",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20))),
                          );
                        },
                      ))
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 2 / 3 - 25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
            ),
          ),
          Positioned(
            top: height * 1 / 3,
            left: 0,
            right: 0,
            child: Container(
              height: height * 2 / 3,
              decoration: BoxDecoration(),
              child: ListView.builder(
                itemBuilder: (context, int) {
                  return Container(
                    height: 170,
                    margin: EdgeInsets.all(15),
                    // padding: EdgeInsets.all(10),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.red[200],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Center(
                                child: Text("value",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20))),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Material(
                            color: Colors.transparent,
                            elevation: 12.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              height: 150,
                              margin: EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      height: 50,
                                      margin: EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Center(
                                            child: Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Text("Classic Leather",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18)),
                                                  Text("Arm Chair",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18)),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(30),
                                              topRight: Radius.circular(30))),
                                      child: Center(
                                          child: Text(
                                        "3000",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset("assets/images/aa.png",
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
