import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_app/home/elements/search_input.dart';
import 'package:travel_app/main.dart';

import 'elements/location.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //location & profile
                SafeArea(
                  child: Container(
                    padding: EdgeInsets.only(left: 24, right: 24, top: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Location(),
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                blurRadius: 7,
                                offset: Offset(0, 7),
                                spreadRadius: -5)
                          ]),
                          child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              child: Image.asset(
                                'assets/images/ilhamt.png',
                                width: 46,
                                height: 46,
                                fit: BoxFit.fitWidth,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                //welcome text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    'Welcome to USA,\nGeorgina',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //search input
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SearchInput(),
                ),
                SizedBox(
                  height: 30,
                ),
                //favorite text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    'Favorite Place',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //card list
                SizedBox(
                  height: 270,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: listPlace.map((place) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Stack(children: <Widget>[
                            Container(
                              width: 209,
                              height: 270,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.3),
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                    spreadRadius: -10)
                              ]),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(14)),
                              child: Image.asset(
                                place.image,
                                width: 209,
                                height: 254,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              child: Container(
                                width: 64,
                                height: 29,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromRGBO(0, 0, 0, 0.1)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(place.icon, color: Color.fromRGBO(255,255,255,1),),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      place.category,
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              right: 8,
                              top: 8,
                            ),
                            Positioned(
                              bottom: 26,
                              right: 10,
                              left: 10,
                              child: Container(
                                width: 189,
                                height: 104,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                    gradient: LinearGradient(
                                        begin: Alignment.centerRight,
                                        end: Alignment.centerLeft,
                                        colors: <Color>[
                                          Color.fromRGBO(255, 255, 255, 0.44),
                                          Color.fromRGBO(255, 255, 255, 1),
                                        ])),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0, top: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        place.name,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/icons/map.png',
                                            color: Color.fromRGBO(17, 20, 23, 0.2),
                                          ),
                                          SizedBox(
                                            width: 5.91,
                                          ),
                                          Text(
                                            place.location,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(17, 20, 23, 1)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            place.distance,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(17, 20, 23, 1)),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(8))),
                                              height: 29,
                                              width: 59,
                                              child: Center(
                                                  child: Text(
                                                    'Detail',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            69, 191, 228, 1),
                                                        fontSize: 14),
                                                  )),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ]),
                        );
                      }).toList()),
                ),
                SizedBox(
                  height: 5,
                ),
                // text Nearest Place
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    'Nearest Place',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: listPlace.map((place) {
                      return Container(
                        margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
                        height: 84,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(17)),
                            gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                colors: <Color>[
                                  Color.fromRGBO(255, 255, 255, 1),
                                  Color.fromRGBO(255, 255, 255, 0)
                                ])),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Stack(
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(13)),
                                    child: Image.asset(
                                      place.image,
                                      width: 66,
                                      height: 66,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          Image.asset(place.icon, color: Color.fromRGBO(17,20,23,1),),
                                          SizedBox(width: 10),
                                          Text(place.name, style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16
                                          ),)
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Text(place.location, style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(17,20,23,1)
                                      ),)
                                    ],
                                  ),
                                ],
                              ),
                              Positioned(
                                right: 0,
                                top: 10,
                                child: Text(
                                  place.distance,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(17,20,23,1)
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: 0,
                                  bottom: 10,
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(8)),
                                          color: Color.fromRGBO(223,243,249,1)
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Color.fromRGBO(69,191,228,1),
                                      ),
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList()
                )
              ],
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     height: 250,
          //     decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //         begin: Alignment.bottomCenter,
          //         end: Alignment.topCenter,
          //         colors: <Color>[
          //           Color.fromRGBO(243,248,249,1),
          //           Color.fromRGBO(243,248,249,0),
          //         ]
          //
          //       )
          //     ),
          //   ),
          // )
        ],
      ),
      floatingActionButton: InkWell(
        onTap: (){},
        child: Container(
          width: 69,
          height: 69,
          decoration: BoxDecoration(
            color: Color.fromRGBO(69,191,228,1),
            borderRadius: BorderRadius.all(Radius.circular(19))
          ),
          child: Image.asset('assets/icons/scan.png'),
        ),
      )
    );
  }
}
