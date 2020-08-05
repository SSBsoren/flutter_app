import 'package:flutter/material.dart';
import 'file:///E:/FlutterSDK/FlutterProj/flutter_app/lib/widgets/ChangeNameCard.dart';
import 'file:///E:/FlutterSDK/FlutterProj/flutter_app/lib/widgets/NavigationDrawer.dart';
import 'package:flutter_app/utils/Constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Sagen me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var responseData = await http.get(url);
    data = jsonDecode(responseData.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Hello App"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){
            Constants.prefs.setBool("loggeIn", false);
            Navigator.pushReplacementNamed(context, "/login");

          })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text("ID: ${data[index]["id"]}"),
                    leading: Image.network(
                      data[index]["url"],
                      width: 60.0,
                      height: 60.0,
                    ),
                  ),
                );
              })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: NavDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
