import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: TextButton(
            child: Image.asset('assets/icons/search.png'),
            onPressed: (){

            },
          ),
          fillColor: Color.fromRGBO(230,242,244,1),
          filled: true,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(17,20,23,0.3)
          ),
          hintText: 'Search places...',
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none
            )
          )
        ),
      ),
    );
  }
}
