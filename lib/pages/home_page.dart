import 'package:flutter/material.dart';
import 'package:flutter_app/ChangeNameCard.dart';
import 'package:flutter_app/NavigationDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Sagen me";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Hello App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: new ChangeNameCard(myText: myText, nameController: _nameController),
            ),
          ),
        ),
      ),
      drawer: NavDrawer(),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          myText = _nameController.text;
          setState(() {

          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


