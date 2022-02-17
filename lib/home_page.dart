import 'package:flutter/material.dart';

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
            box1UI(),
            const SizedBox(height: 20),
            box2UI(),
            const SizedBox(height: 20),
            sliderUI(),
            const SizedBox(height: 20),
            box3UI(),
            const SizedBox(height: 20),
            categoryListUI(),
            const SizedBox(height: 20),
            box4UI(),
            const SizedBox(height: 20),
            box5UI(),
            const SizedBox(height: 20),
            magSection(),
          ],
        ),
      ),
    );
  }

  Widget box1UI() {
    return SizedBox(
      height: 300,
      child: ElevatedButton(
        onPressed: () {},
        child: Expanded(child: Container(color: Colors.green)),
      ),
    );
  }

  Widget box2UI() {
    return SizedBox(
      height: 300,
      child: ElevatedButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.all(0.0),
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
          const Text(
            "Categories",
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit),
                  label: const Text("Men"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit),
                  label: const Text("Women"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit),
                  label: const Text("Boys"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit),
                  label: const Text("Girls"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit),
                  label: const Text("Men"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit),
                  label: const Text("Men"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget box3UI() {
    return SizedBox(
      height: 300,
      child: ElevatedButton(
        onPressed: () {},
        child: Container(color: Colors.green),
      ),
    );
  }

  Color getTextColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.red;
    }
    return Colors.black;
  }

  Widget categoryListUI() {
    return SizedBox(
      height: 500,
      child: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          ElevatedButton(
            onPressed: () {},
            onLongPress: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              foregroundColor: MaterialStateProperty.resolveWith(getTextColor),
              elevation: MaterialStateProperty.all(0),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 10.0)),
            ),
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: const Text(
                "Women",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            onLongPress: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              foregroundColor: MaterialStateProperty.resolveWith(getTextColor),
              elevation: MaterialStateProperty.all(0),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 10.0)),
            ),
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: const Text(
                "Divided",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            // onLongPress: ,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              foregroundColor: MaterialStateProperty.resolveWith(getTextColor),
              elevation: MaterialStateProperty.all(0),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 10.0)),
            ),
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: const Text(
                "Men",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              foregroundColor: MaterialStateProperty.resolveWith(getTextColor),
              elevation: MaterialStateProperty.all(0),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 10.0)),
            ),
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: const Text(
                "Baby",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              foregroundColor: MaterialStateProperty.resolveWith(getTextColor),
              elevation: MaterialStateProperty.all(0),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 10.0)),
            ),
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: const Text(
                "Kids",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              foregroundColor: MaterialStateProperty.resolveWith(getTextColor),
              elevation: MaterialStateProperty.all(0),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 10.0)),
            ),
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: const Text(
                "Sale",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              foregroundColor: MaterialStateProperty.resolveWith(getTextColor),
              elevation: MaterialStateProperty.all(0),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 10.0)),
            ),
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: const Text(
                "Life",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget box4UI() {
    return SizedBox(
      height: 300,
      child: ElevatedButton(
        onPressed: () {},
        child: Container(color: Colors.green),
      ),
    );
  }

  Widget box5UI() {
    return SizedBox(
      height: 300,
      child: ElevatedButton(
        onPressed: () {},
        child: Container(color: Colors.green),
      ),
    );
  }

  Widget magSection() {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.orange.shade100,
      height: 1350,
      width: double.infinity,
      child: ListView(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        children: [
          // const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Magazine",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Container(color: Colors.green),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Container(color: Colors.green),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Container(color: Colors.green),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Container(color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
