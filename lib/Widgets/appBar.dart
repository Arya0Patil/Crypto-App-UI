import 'package:flutter/material.dart';

Widget appBar() {
  return Container(
    color: Colors.transparent,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: Color(0xff2b2b37),
          child: IconButton(
              onPressed: () {}, icon: Image.asset("assets/appBarIcon1.png")),
        ),
        Text(
          "Home",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.check_box_outline_blank_sharp))
      ],
    ),
  );
}
