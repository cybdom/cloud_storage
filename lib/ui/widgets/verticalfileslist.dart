import 'package:cloud_storage/global.dart';
import 'package:flutter/material.dart';

class VerticalFilesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: uploadedFiles.length,
      itemBuilder: (ctx, i) {
        IconData _icon;
        if (uploadedFiles[i]['type'] == uploadedFilesType.document)
          _icon = Icons.library_books;
        else if (uploadedFiles[i]['type'] == uploadedFilesType.media)
          _icon = Icons.play_circle_filled;
        else if (uploadedFiles[i]['type'] == uploadedFilesType.photo)
          _icon = Icons.image;

        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: uploadedFiles[i]['color'],
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Icon(_icon, color: Colors.white,),
          ),
          title: Text("${uploadedFiles[i]['name']}"),
          subtitle: Text("${uploadedFiles[i]['date']}"),
          trailing: IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        );
      },
    );
  }
}
