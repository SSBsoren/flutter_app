import 'package:flutter/material.dart';
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          /* DrawerHeader(
              child: Center(child: Text("Sagen Soren")),
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
            ),*/
          UserAccountsDrawerHeader(
            accountName: Text("Sagen Soren"),
            accountEmail: Text("Sagensakam015@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars3.githubusercontent.com/u/35399866?s=460&u=79ec8737e5960807d502109d4144a536ed85d075&v=4"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Contacts"),
            subtitle: Text("SIM 1"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Emails"),
            subtitle: Text("sagensakam015@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("Messages"),
            subtitle: Text("SIM 1"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          ),
        ],
      ),
    );
  }
}
