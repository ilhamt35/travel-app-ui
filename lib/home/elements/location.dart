import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        color: Color.fromRGBO(230,242,244,1)
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
          child: Row(
            children: <Widget>[
              Image.asset('assets/icons/map.png'),
              SizedBox(width: 8.91,),
              Text('Chicago, USA', style: TextStyle(
                fontSize: 14
              ),)
            ],
          ),
        ),
      ),
    );
  }
}