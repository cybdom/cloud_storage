import 'package:flutter/material.dart';
enum uploadedFilesType {media, photo, document}
  final List<Map<String, dynamic>> filesTypes = [
    {
      'color': Color(0xff00c3ff),
      'name': 'Photos',
      'percentage': 50,
      'files_count': 231,
      'is_locked' : false,
      'icon' : 'assets/image.png',
    },
    {
      'color': Color(0xff66cf45),
      'name': 'Media',
      'percentage': 23,
      'files_count': 294,
      'is_locked' : true,
      'icon' : 'assets/video.png',

    },
    {
      'color': Color(0xff9768ff),
      'name': 'Documents',
      'percentage': 15,
      'files_count': 192,
      'is_locked' : false,
      'icon' : 'assets/normal.png',
    },
  ];

  final List<Map<String, dynamic>> uploadedFiles = [
    {
      'type': uploadedFilesType.photo,
      'color': Color(0xff00c3ff),
      'date' : "15/09/2019",
      "name" : "Birthday Pics"
    },
    {
      'type': uploadedFilesType.document,
      'color': Color(0xff9768ff),
      'date' : "15/09/2019",
      "name" : "Important invoice"
    },
    {
      'type': uploadedFilesType.media,
      'color': Color(0xff66cf45),
      'date' : "03/09/2019",
      "name" : "Cat Video"
    },
  ];