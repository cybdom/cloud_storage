import 'package:flutter/material.dart';
import 'package:cloud_storage/ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 9,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 15.0,),
              TopBar(),
              SizedBox(height: 15.0,),
              Text(
                "Standard Plan",
                style: Theme.of(context)
                    .textTheme
                    .subhead
                    .apply(color: Colors.blueAccent,fontWeightDelta: 2),
              ),
              SizedBox(height: 15.0,),
              HomeStatsContainer(),
              SizedBox(height: 15.0,),
              Row(
                children: <Widget>[
                  Text(
                    "View your files",
                    style: Theme.of(context).textTheme.title,
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 5.0,),
              HorizontalFilesList(),
              SizedBox(height: 15.0,),
              Text(
                "Last uploaded",
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(height: 5.0,),
              VerticalFilesList(),
              SizedBox(height: 15.0,),
            ],
          ),
        ),
      ),
    );
  }
}
