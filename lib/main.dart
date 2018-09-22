import 'package:flutter/material.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Sagen',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sagen Soren'),
        ),
        body: HelloSagen(),
      ),
    ),
  );
}

class HelloSagen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        color: Colors.greenAccent,
        height: 400.0,
        width: 300.0,

        child: Center(
          child: Text(
            'Hello Sagen',
            style: TextStyle(fontSize: 40.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

}