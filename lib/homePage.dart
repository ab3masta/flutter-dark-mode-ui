import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_darkmode_ui/allStyle/text_styles.dart';
import 'package:flutter_darkmode_ui/detailsPage.dart';
import 'package:flutter_darkmode_ui/model/fourniture.dart';
import 'package:flutter_darkmode_ui/tabText.dart';
import 'package:flutter_darkmode_ui/theme/app_themes.dart';
import 'package:flutter_darkmode_ui/theme/bloc/theme_bloc.dart';
import 'package:flutter_darkmode_ui/theme/bloc/theme_event.dart';
import 'dart:math';

class HHHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HHHomePage>
    with SingleTickerProviderStateMixin {
  double width, height;
  int selectedTabIndex = 0;
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
  }

  playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: width,
          height: height,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                  height: height * 1 / 3 + 75,
                  color: Theme.of(context).accentColor,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Acceuil",
                            style: style1BoldWhiteJosefinSans,
                          ),
                          InkWell(
                            onTap: () {
                              if (Theme.of(context).primaryColor ==
                                  Colors.blue[400]) {
                                BlocProvider.of<ThemeBloc>(context).dispatch(
                                  ThemeChanged(theme: AppTheme.BlueDark),
                                );
                                print("light mode");
                              } else if (Theme.of(context).primaryColor ==
                                  Colors.grey[600]) {
                                BlocProvider.of<ThemeBloc>(context).dispatch(
                                  ThemeChanged(theme: AppTheme.BlueLight),
                                );
                                print("dark mode");
                              }
                            },
                            child: Container(
                                height: 30,
                                width: 30,
                                child: Stack(
                                  children: <Widget>[
                                    Center(
                                        child: (Theme.of(context)
                                                    .primaryColor ==
                                                Colors.blue)
                                            ? Icon(
                                                Icons.wb_sunny,
                                                size: 25,
                                                color: Colors.white,
                                              )
                                            : (Theme.of(context).primaryColor ==
                                                    Colors.grey[600])
                                                ? Icon(
                                                    Icons.brightness_3,
                                                    size: 25,
                                                    color: Colors.white,
                                                  )
                                                : Icon(
                                                    Icons.wb_sunny,
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
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            height: 50,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColorDark,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: TextFormField(
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  icon: Icon(Icons.search,
                                      color: Colors.white, size: 30),
                                  labelText: "Search Here",
                                  labelStyle: style0BoldWhiteJosefinSans,
                                  hintStyle: style0BoldWhiteJosefinSans),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                TabText(
                                  text: 'All',
                                  isSelected: selectedTabIndex == 0,
                                  onTabTap: () {
                                    onTabTap(0);
                                  },
                                ),
                                TabText(
                                  text: 'Bureau',
                                  isSelected: selectedTabIndex == 1,
                                  onTabTap: () {
                                    onTabTap(1);
                                  },
                                ),
                                TabText(
                                  text: 'Chaise',
                                  isSelected: selectedTabIndex == 2,
                                  onTabTap: () {
                                    onTabTap(2);
                                  },
                                ),
                                TabText(
                                  text: 'Ordinateur',
                                  isSelected: selectedTabIndex == 3,
                                  onTabTap: () {
                                    onTabTap(3);
                                  },
                                ),
                                TabText(
                                  text: 'Stylo',
                                  isSelected: selectedTabIndex == 4,
                                  onTabTap: () {
                                    onTabTap(4);
                                  },
                                ),
                                TabText(
                                  text: 'Chaise',
                                  isSelected: selectedTabIndex == 5,
                                  onTabTap: () {
                                    onTabTap(5);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height * 2 / 3 - 25,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      )),
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
                    itemCount: fournitureList.fournitures.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                    firstName: fournitureList
                                        .fournitures[index].firstName,
                                    lastName: fournitureList
                                        .fournitures[index].lastName,
                                    price:
                                        fournitureList.fournitures[index].price,
                                    image:
                                        fournitureList.fournitures[index].image,
                                    description: fournitureList
                                        .fournitures[index].description,
                                  )));
                        },
                        child: Container(
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
                                      color: Colors.primaries[Random()
                                          .nextInt(Colors.primaries.length)],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Center(
                                      child: Text("value",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20))),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 12.0,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  child: Container(
                                    height: 150,
                                    margin: EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).accentColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: Stack(
                                      children: <Widget>[
                                        Center(
                                          child: Container(
                                            height: 55,
                                            margin: EdgeInsets.all(10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Center(
                                                  child: Container(
                                                    child: Column(
                                                      children: <Widget>[
                                                        Text(
                                                            fournitureList
                                                                .fournitures[
                                                                    index]
                                                                .firstName,
                                                            style:
                                                                style1BoldWhiteJosefinSans),
                                                        Text(
                                                            fournitureList
                                                                .fournitures[
                                                                    index]
                                                                .lastName,
                                                            style:
                                                                style1BoldWhiteJosefinSans),
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
                                                color: Theme.of(context)
                                                    .primaryColorDark,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30))),
                                            child: Center(
                                                child: Text(
                                              fournitureList.fournitures[index].price.toString(),
                                              style: style0whiteJosefinSans,
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 0.0),
                                    child: Hero(
                                      tag: fournitureList
                                          .fournitures[index].image,
                                      child: Image.asset(
                                          fournitureList
                                              .fournitures[index].image,
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getList(index) {
    return [
      [
        new Container(),
      ],
      [
        new Container(),
      ],
      [
        new Container(),
      ]
    ][index];
  }

  onTabTap(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }
}
