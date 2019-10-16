import 'package:cloud_storage/global.dart';
import 'package:flutter/material.dart';

class HorizontalFilesList extends StatefulWidget {
  @override
  _HorizontalFilesListState createState() => _HorizontalFilesListState();
}

class _HorizontalFilesListState extends State<HorizontalFilesList> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 201,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filesTypes.length,
        itemBuilder: (ctx, i) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details'),
                      child: Container(
              padding: EdgeInsets.all(15.0),
              width: MediaQuery.of(context).size.width / 3,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: _active == i ? Color(0xffe6f8fc) : Color(0xffeff7f1),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      filesTypes[i]['icon'],
                      height: 50,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      Text(
                        "${filesTypes[i]['name']}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      _active == i
                          ? Icon(Icons.lock, color: filesTypes[i]['color'])
                          : Container(),
                    ],
                  ),
                  Text("${filesTypes[i]['files_count']} items"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
