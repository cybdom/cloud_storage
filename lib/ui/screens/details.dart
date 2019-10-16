import 'package:cloud_storage/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color(0xff1e2d3b),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 25.0,
                      color: Colors.black45,
                    )
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                color: Colors.grey[300],
                              ),
                              border: InputBorder.none,
                              hintText: "Search",
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300],
                            ),
                            shape: BoxShape.circle,
                          ),
                          margin: EdgeInsets.only(left: 15.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.person,
                              color: Colors.grey[300],
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Available space in",
                            style: Theme.of(context)
                                .textTheme
                                .subhead
                                .apply(color: Colors.grey[300]),
                          ),
                          TextSpan(
                            text: " Documents",
                            style: Theme.of(context).textTheme.subhead.apply(
                                  color: Color(0xff00c5ff),
                                ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    FittedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "17,9",
                            style: Theme.of(context)
                                .textTheme
                                .display2
                                .apply(color: Colors.white, fontWeightDelta: 2),
                          ),
                          Text(
                            " GB",
                            style: Theme.of(context).textTheme.headline.apply(
                                color: Colors.grey[300], fontWeightDelta: 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    DetailsStateContainer(),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xff00c5ff),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Upgrade Plan",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle
                                      .apply(
                                          color: Colors.white,
                                          fontWeightDelta: 2),
                                ),
                                Text(
                                  "+99GB",
                                  style:
                                      Theme.of(context).textTheme.body2.apply(
                                            color: Colors.grey[100],
                                          ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(11.0),
                            decoration: BoxDecoration(
                              color: Color(0xff0093d1),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Text(
                              "\$ 15.99",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .apply(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Learn more about the plans",
                      style: Theme.of(context)
                          .textTheme
                          .subhead
                          .apply(color: Colors.grey[300]),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.drag_handle,
                        color: Colors.white,
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Most Used",
                          style: Theme.of(context).textTheme.title,
                        ),
                        IconButton(
                          icon: Icon(Icons.more_horiz),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 90,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Color(0xffe2f7fc),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Icon(Icons.image, size: 50, color: Color(0xff00c5ff),),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 90,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Color(0xffe2f7fc),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Icon(Icons.play_circle_filled, size: 50, color: Color(0xff66d043),),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 90,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Color(0xffe2f7fc),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Icon(Icons.library_books, size: 50, color: Color(0xff9868ff),),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
