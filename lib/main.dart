import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Hello App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello App"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            width: 100.0,
            height: 100.0,
            child: Text("Sagen Soren",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13.0,
            ),),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 5.0,
                    offset: Offset(2.0, 5.0)
                  )
                ],
                gradient: LinearGradient(colors: [Colors.yellow, Colors.pink])),
          ),
        ));
  }
}
