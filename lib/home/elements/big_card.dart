import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            child: Image.asset(
              'assets/images/gambar1.png',
              width: 209,
              height: 254,
            ),
          ),
          Positioned(
            child: Container(
              width: 64,
              height: 29,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromRGBO(0,0,0,0.1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/icons/trees.png'),
                  SizedBox(width: 4,),
                  Text('Park', style: TextStyle(fontSize: 12, color: Colors.white),)
                ],
              ),
            ),
            right: 8,
            top: 8,
          ),
          Positioned(
            bottom: 10,
            right: 10,
            left: 10,
            child: Container(
              width: 189,
              height: 104,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: <Color>[
                    Color.fromRGBO(255,255,255,0.44),
                    Color.fromRGBO(255,255,255,1),
                  ]
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Lincoln Park', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        Image.asset('assets/icons/map.png', color: Color.fromRGBO(17,20,23,0.2),),
                        SizedBox(width: 5.91,),
                        Text('34 West 57th Street, PH', style: TextStyle(fontSize: 12, color: Color.fromRGBO(17,20,23,1)),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('9.8 mi', style: TextStyle(fontSize: 12, color: Color.fromRGBO(17,20,23,1)),),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            height: 29,
                            width: 59,
                            child: Center(child: Text('Detail', style: TextStyle(color: Color.fromRGBO(69,191,228,1), fontSize: 14),)),
                          ),
                        )
                        // TextButton(
                        //   onPressed: null,
                        //   style: ButtonStyle(
                        //     backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
                        //   ),
                        //   child: Text('Detail', style: TextStyle(color: Color.fromRGBO(69,191,228,1), fontSize: 14),),
                        // )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
    ]));
  }
}
