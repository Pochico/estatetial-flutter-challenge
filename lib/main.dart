import 'package:estatetial_flutter_challenge/screen/launch_detail.dart';
import 'package:estatetial_flutter_challenge/utils/styles.dart';
import 'package:estatetial_flutter_challenge/widget/bottom_menu.dart';
import 'package:estatetial_flutter_challenge/widget/launch.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estatetial flutter Challenge',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'SpaceX'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => openBottomMenu(context));
    super.initState();
  }

  final Color primaryColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          leading: GestureDetector(
              onTap: () => openBottomMenu(context),
              child: Icon(Icons.menu, color: Colors.white)),
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              './assets/images/planet.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
