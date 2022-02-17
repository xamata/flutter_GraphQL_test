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
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: ListView(
          // padding: EdgeInsets.symmetric(horizontal: 10.0),
          children: [
            box1UI(),
            const SizedBox(height: 20),
            box2UI(),
            const SizedBox(height: 5),
            sliderTitleUI(),
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
    return Container(
      height: 300,
      color: Colors.transparent,
      child: ElevatedButton(
        onPressed: () {},
        child: Stack(
          children: const [
            Image(
              width: 400,
              image: AssetImage("images/home_page_1.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment(0.0, -0.8),
            ),
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0)),
      ),
    );
  }

  Widget box2UI() {
    return Container(
      height: 300,
      color: Colors.transparent,
      child: ElevatedButton(
        onPressed: () {},
        child: Stack(
          children: const [
            Image(
              width: 400,
              image: AssetImage("images/home_page_2.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment(0.0, -0.8),
            ),
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0)),
      ),
    );
  }

  Widget sliderTitleUI() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Container(
        child: const Text(
          "Categories",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Widget sliderUI() {
    return Container(
      height: 100,
      child: ElevatedButtonTheme(
        data: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.orange.shade100,
            shape: CircleBorder(),
            onPrimary: Colors.black,
            elevation: 0,
          ),
        ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 90,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Men"),
                    ),
                  ),
                  Text("Men", style: TextStyle(color: Colors.grey.shade700)),
                  Text(
                    "Hoodies & Sweatshirts",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: 90,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Men"),
                    ),
                  ),
                  Text("Men", style: TextStyle(color: Colors.grey.shade700)),
                  Text(
                    "Hoodies & Sweatshirts",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: 90,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Men"),
                    ),
                  ),
                  Text("Men", style: TextStyle(color: Colors.grey.shade700)),
                  Text(
                    "Hoodies & Sweatshirts",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: 90,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Men"),
                    ),
                  ),
                  Text("Men", style: TextStyle(color: Colors.grey.shade700)),
                  Text(
                    "Hoodies & Sweatshirts",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: 90,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Men"),
                    ),
                  ),
                  Text("Men", style: TextStyle(color: Colors.grey.shade700)),
                  Text(
                    "Hoodies & Sweatshirts",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: 90,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Men"),
                    ),
                  ),
                  Text("Men", style: TextStyle(color: Colors.grey.shade700)),
                  Text(
                    "Hoodies & Sweatshirts",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget box3UI() {
    return Container(
      height: 300,
      color: Colors.transparent,
      child: ElevatedButton(
        onPressed: () {},
        child: Stack(
          children: const [
            Image(
              width: 400,
              image: AssetImage("images/home_page_1.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment(0.0, -0.8),
            ),
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0)),
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
    return Container(
      height: 300,
      color: Colors.transparent,
      child: ElevatedButton(
        onPressed: () {},
        child: Stack(
          children: const [
            Image(
              width: 400,
              image: AssetImage("images/home_page_1.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment(0.0, -0.8),
            ),
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0)),
      ),
    );
  }

  Widget box5UI() {
    return Container(
      height: 300,
      color: Colors.transparent,
      child: ElevatedButton(
        onPressed: () {},
        child: Stack(
          children: const [
            Image(
              width: 400,
              image: AssetImage("images/home_page_1.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment(0.0, -0.8),
            ),
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0)),
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
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        children: [
          // const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Magazine",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 300,
            color: Colors.transparent,
            child: ElevatedButton(
              onPressed: () {},
              child: Stack(
                children: const [
                  Image(
                    width: 400,
                    image: AssetImage("images/home_page_1.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment(0.0, -0.8),
                  ),
                ],
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0)),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 300,
            color: Colors.transparent,
            child: ElevatedButton(
              onPressed: () {},
              child: Stack(
                children: const [
                  Image(
                    width: 400,
                    image: AssetImage("images/home_page_1.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment(0.0, -0.8),
                  ),
                ],
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0)),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 300,
            color: Colors.transparent,
            child: ElevatedButton(
              onPressed: () {},
              child: Stack(
                children: const [
                  Image(
                    width: 400,
                    image: AssetImage("images/home_page_1.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment(0.0, -0.8),
                  ),
                ],
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0)),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 300,
            color: Colors.transparent,
            child: ElevatedButton(
              onPressed: () {},
              child: Stack(
                children: const [
                  Image(
                    width: 400,
                    image: AssetImage("images/home_page_1.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment(0.0, -0.8),
                  ),
                ],
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0)),
            ),
          )
        ],
      ),
    );
  }
}
