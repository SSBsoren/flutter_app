import 'package:flutter/material.dart';
import 'file:///E:/FlutterSDK/FlutterProj/flutter_app/lib/widgets/bg_image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  })
      : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BgImage(),
        Text(myText
          , style: TextStyle(fontSize: 20.5, fontWeight: FontWeight.bold),),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.numberWithOptions(),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter something here",
              labelText: "Name",),

          ),
        )

      ],
    );
  }
}