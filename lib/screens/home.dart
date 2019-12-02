import 'package:flutter/material.dart';
import 'package:fluttertube/utils/data_search.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 25,
          child: Image.asset("lib/assets/images/youtube-logo.png"),
        ),
        brightness: Brightness.light, 
        centerTitle: false,
        elevation: 0, 
        backgroundColor: Color(0xfff5f6fa),
        actions: <Widget>[
          Align(
            alignment: Alignment.center, 
            child: Text(
              "0",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.star, color: Colors.black),
            onPressed: (){
              
            },
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () async {
              String result = await showSearch(context: context, delegate: DataSearch());
              print(result);
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}