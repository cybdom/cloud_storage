import 'package:cloud_storage/global.dart';
import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;

/// Sample linear data type.
class Linearspace {
  final int folder;
  final int space;

  Linearspace(this.folder, this.space);
}

class HomeStatsContainer extends StatelessWidget {
  static List<charts.Series<Linearspace, int>> _createSampleData() {
    final data = [
      new Linearspace(0, 50),
      new Linearspace(1, 37),
      new Linearspace(2, 15),
    ];

    return [
      new charts.Series<Linearspace, int>(
        id: 'space',
        domainFn: (Linearspace space, _) => space.folder,
        measureFn: (Linearspace space, _) => space.space,
        data: data,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Personal Files",
            style:
                Theme.of(context).textTheme.headline.apply(fontWeightDelta: 2),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 91,
                  width: 91,
                  child: charts.PieChart(
                    _createSampleData(),
                    animate: false,
                    defaultRenderer: new charts.ArcRendererConfig(arcWidth: 60),
                  ),
                ),
                SizedBox(width: 15),
                Flexible(
                  flex: 3,
                  child: Column(
                    children: List.generate(
                      filesTypes.length,
                      (i) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  height: 9,
                                  width: 9,
                                  color: filesTypes[i]['color']),
                              SizedBox(width: 15.0),
                              Text("${filesTypes[i]['name']}"),
                              Spacer(),
                              Text("${filesTypes[i]['percentage']} %"),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
