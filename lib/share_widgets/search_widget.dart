import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final hinttext, backgroundColor;
  const SearchWidget({Key key, this.hinttext, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: backgroundColor),
      // alignment: Alignment.center,
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 0),
      height: 36,
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5, left: -5),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          icon: Icon(
            Icons.search,
            color: Colors.black,
            size: 25,
          ),
          hintText: hinttext,
        ),
      ),
    );
  }
}
