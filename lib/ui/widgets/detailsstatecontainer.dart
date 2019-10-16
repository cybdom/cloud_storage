import 'package:flutter/material.dart';

class DetailsStateContainer extends StatelessWidget {
  final List<Map<String, dynamic>> stats = [
    {'icon': Icons.play_circle_filled, 'progress': 0.81},
    {'icon': Icons.cloud, 'progress': 0.87},
    {'icon': Icons.face, 'progress': 0.91},
    {'icon': Icons.image, 'progress': 0.85},
    {'icon': Icons.insert_chart, 'progress': 0.89},
    {'icon': Icons.insert_drive_file, 'progress': 0.99},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: MediaQuery.of(context).size.height / 4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stats.length,
        itemBuilder: (ctx, i) {
          return LayoutBuilder(
            builder: (ctx, constraints) {
              return Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  width: MediaQuery.of(context).size.width / 10,
                  height: constraints.maxHeight * stats[i]['progress'],
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xff2c3948),
                  ),
                  child: Icon(stats[i]['icon'], color: Colors.black54),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
