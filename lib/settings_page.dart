import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';

import 'account_page.dart';
import 'main.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Row(
              children: [
                TextButton(
                  child: Text(
                    "Account",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Row(
              children: [
                TextButton(
                  child: Text(
                    "Account",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Row(
              children: [
                TextButton(
                  child: Text(
                    "Account",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Row(
              children: [
                TextButton(
                  child: Text(
                    "Account",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Row(
              children: [
                TextButton(
                  child: Text(
                    "Account",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Row(
              children: [
                TextButton(
                  child: Text(
                    "Account",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
