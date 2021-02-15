import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_bloc_arhetecture/style/theme.dart' as Style;


class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.secondColor,
        centerTitle: true,
        leading: Icon(EvaIcons.menu2Outline, color: Colors.white, ),
        title: Text("Movie App"),
        actions: <Widget>[
          IconButton(icon: Icon(EvaIcons.searchOutline, color:  Colors.white,), onPressed: null)
        ],
      ),
      body: ListView(
        children: <Widget>[

        ],
      ),
    );
  }
}