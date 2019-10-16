import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        SizedBox(width: 5.0),
        RaisedButton.icon(
          color: Color(0xfffff0dc),
          label: Text("Upgrade", style: TextStyle(color: Color(0xffd1922f))),
          icon: Icon(
            Icons.star,
            color: Color(0xffd1922f),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(9.0),
          ),
          onPressed: () {},
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[500],
            ),
            shape: BoxShape.circle,
          ),
          margin: EdgeInsets.only(left: 15.0),
          child: IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.grey[500],
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
