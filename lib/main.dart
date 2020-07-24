import 'package:flutter/material.dart';

import 'package:flutter_app/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Hello App",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}
