import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int currentIndex = 0;
  List pages = [
    const Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    ),
    const Center(
        child: Text(
      'Collection',
      style: TextStyle(fontSize: 30, color: Colors.white),
    )),
    const Center(
        child: Text(
      'Add',
      style: TextStyle(fontSize: 30, color: Colors.white),
    )),
    const Center(
        child: Text(
      'Bookmark',
      style: TextStyle(fontSize: 30, color: Colors.white),
    )),
    const Center(
        child: Text(
      'Setting',
      style: TextStyle(fontSize: 30, color: Colors.white),
    )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('BottomNavigationBar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 14),
        selectedIconTheme: const IconThemeData(size: 25),
        unselectedIconTheme: const IconThemeData(size: 25),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.collections), label: 'Collection'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.add_circled), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bookmark), label: 'Bookmark'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), label: 'Setting'),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
