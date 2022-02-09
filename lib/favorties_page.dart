import 'package:flutter/material.dart';

class FavortiesPage extends StatefulWidget {
  const FavortiesPage({Key? key}) : super(key: key);

  @override
  _FavortiesPageState createState() => _FavortiesPageState();
}

class _FavortiesPageState extends State<FavortiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Your Favorites",
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "You Have No Favorties",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          Container(
            child: const Text(
              "Sign in to your members account to save your favorites.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            alignment: Alignment.topCenter,
            // color: Colors.blue,
            margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50),
          ),
        ],
      ),
    );
  }
}
