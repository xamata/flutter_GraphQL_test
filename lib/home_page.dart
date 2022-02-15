import 'package:flutter/material.dart';
import 'settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Home',
            style: TextStyle(color: Colors.black, fontSize: 24)),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView(
          // padding: EdgeInsets.symmetric(horizontal: 10.0),
          children: [
            Box1UI(),
            SizedBox(height: 20),
            Box2UI(),
            SizedBox(height: 20),
            sliderUI(),
            SizedBox(height: 20),
            Box3UI(),
          ],
        ),
      ),
    );
  }

  Widget Box1UI() {
    return SizedBox(
      height: 300,
      child: ElevatedButton(
        onPressed: () {},
        child: Expanded(child: Container(color: Colors.green)),
      ),
    );
  }

  Widget Box2UI() {
    return SizedBox(
      height: 300,
      child: ElevatedButton(
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.all(0.0),
          color: Colors.yellow,
          width: double.infinity,
        ),
      ),
    );
  }

  Widget sliderUI() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Text(
            "Categories",
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit),
                  label: Text("Men"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit),
                  label: Text("Women"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit),
                  label: Text("Boys"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit),
                  label: Text("Girls"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit),
                  label: Text("Men"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit),
                  label: Text("Men"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget Box3UI() {
    return SizedBox(
      height: 300,
      child: ElevatedButton(
        onPressed: () {},
        child: Container(color: Colors.green),
      ),
    );
  }
}
