import 'package:flutter/material.dart';
import 'package:youtube_source/pages/staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube Sourece',
      theme: ThemeData.dark(),
      home: const StaggeredGridViewPage(),
      // home: const StaggeredGridViewPage(),
    );
  }
}