import 'dart:async';

import 'package:flutter/material.dart';
import 'file:///E:/FlutterSDK/FlutterProj/flutter_app/lib/widgets/ChangeNameCard.dart';
import 'file:///E:/FlutterSDK/FlutterProj/flutter_app/lib/widgets/NavigationDrawer.dart';
import 'package:flutter_app/utils/Constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePageFB extends StatelessWidget {
/*
  @override
  void initState() {
    super.initState();
    getData();
  }*/

  Future getData() async {
    var url = "https://jsonplaceholder.typicode.com/photos";
    var responseData = await http.get(url);
    var data = jsonDecode(responseData.body);
    print(data);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Hello App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Constants.prefs.setBool("loggedIn", false);
                Navigator.pushReplacementNamed(context, "/login");
              })
        ],
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                  child: Text("Fetch Something"),
                );
              case ConnectionState.active:

              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.done:
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Some Error Occured"),
                  );
                }
                return ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                      title: Text(snapshot.data[index]["title"]),
                      subtitle: Text("ID: ${snapshot.data[index]["id"]}"),
                      leading: Image.network(
                        snapshot.data[index]["url"],
                        width: 60.0,
                        height: 60.0,
                      ),
                    ),
                  );
                });
            }
          }),
      drawer: NavDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /* myText = _nameController.text;
          setState(() {});*/
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
