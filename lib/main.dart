import 'package:flutter/material.dart';
import 'package:play_it/screen/provider/video_provider.dart';
import 'package:play_it/screen/view/home_screen.dart';
import 'package:play_it/screen/view/video_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => VideoProvider(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => homescreen(),
        'video':(context) => videoscreen(),
      },
    ),
  ));
}