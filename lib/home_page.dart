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
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    const HomeWidgetExamplePage()),
          );
        },
        child: Stack(
          children: [
            const Image(
              width: 400,
              image: AssetImage("images/home_page_1.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment(0.0, -0.8),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.7, 1],
                  colors: [
                    Colors.transparent,
                    Colors.grey.withOpacity(0.5),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Comfortably Stylin'",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.bold)),
                    Text("Put your best foot forward",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  ],
                ),
              ),
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
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    const HomeWidgetExamplePage()),
          );
        },
        child: Stack(
          children: [
            const Image(
              width: 400,
              image: AssetImage("images/home_page_2.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment(0.0, -0.8),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.7, 1],
                  colors: [
                    Colors.transparent,
                    Colors.grey.withOpacity(0.5),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Soft Tailoring",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold)),
                    Text("Get yourself something snazzy",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  ],
                ),
              ),
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
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: const Text(
        "Categories",
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget sliderUI() {
    return SizedBox(
      height: 120,
      child: ElevatedButtonTheme(
        data: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Colors.orange.shade100,
              shape: const CircleBorder(),
              onPrimary: Colors.black,
              elevation: 0,
              splashFactory: NoSplash.splashFactory),
        ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 75,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Men"),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Column(
                      children: [
                        Text("Men",
                            style: TextStyle(color: Colors.grey.shade700)),
                        const Text(
                          "Hoodies & Sweatshirts",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 75,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Men"),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Column(
                      children: [
                        Text("Men",
                            style: TextStyle(color: Colors.grey.shade700)),
                        const Text(
                          "Pants",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 75,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Men"),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Column(
                      children: [
                        Text("Men",
                            style: TextStyle(color: Colors.grey.shade700)),
                        const Text(
                          "T-shirts & Tanks",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 75,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const MagazineExamplePage()),
                        );
                      },
                      child: const Text("Men"),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Column(
                      children: [
                        Text("Men",
                            style: TextStyle(color: Colors.grey.shade700)),
                        const Text(
                          "Jackets & Coats",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 75,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Men"),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Column(
                      children: [
                        Text("Men",
                            style: TextStyle(color: Colors.grey.shade700)),
                        const Text(
                          "Clothes",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 75,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const MagazineExamplePage()),
                        );
                      },
                      child: const Text("Men"),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Column(
                      children: [
                        Text("Men",
                            style: TextStyle(color: Colors.grey.shade700)),
                        const Text(
                          "Jeans",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
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
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    const HomeWidgetExamplePage()),
          );
        },
        child: Stack(
          children: [
            const Image(
              width: 400,
              image: AssetImage("images/home_page_3.jpeg"),
              fit: BoxFit.fitWidth,
              alignment: Alignment(0.0, -0.0),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.7, 1],
                  colors: [
                    Colors.transparent,
                    Colors.grey.withOpacity(0.5),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Beautiful Outwear",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold)),
                    Text("Get some sun on your face",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  ],
                ),
              ),
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
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    const HomeWidgetExamplePage()),
          );
        },
        child: Stack(
          children: [
            const Image(
              width: 400,
              image: AssetImage("images/home_page_4.jpg"),
              fit: BoxFit.fitWidth,
              alignment: Alignment(0.0, -0.2),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.7, 1],
                  colors: [
                    Colors.transparent,
                    Colors.grey.withOpacity(0.6),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Find your style",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold)),
                    Text("Strut what your momma gave you",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  ],
                ),
              ),
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
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    const HomeWidgetExamplePage()),
          );
        },
        child: Stack(
          children: [
            const Image(
              width: 400,
              image: AssetImage("images/home_page_5.jpg"),
              fit: BoxFit.fitWidth,
              alignment: Alignment(0.0, -0.8),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.7, 1],
                  colors: [
                    Colors.transparent,
                    Colors.grey.withOpacity(0.5),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("Peace of Mind",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold)),
                      Text("Your shirts are going to last",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )),
                    ],
                  ),
                ),
              ),
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
      height: 1025,
      width: double.infinity,
      child: ListView(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Magazine",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MagazineExamplePage()));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onSurface: Colors.transparent,
              shadowColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              elevation: 0,
            ),
            child: Stack(
              children: const [
                Image(
                  width: 400,
                  height: 300,
                  image: AssetImage("images/home_page_mag_1.jpeg"),
                  fit: BoxFit.fitHeight,
                  alignment: Alignment(0.0, -0.8),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MagazineExamplePage()));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onSurface: Colors.transparent,
              shadowColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              elevation: 0,
            ),
            child: Stack(
              children: const [
                Image(
                  height: 300,
                  image: AssetImage("images/home_page_mag_2.jpeg"),
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MagazineExamplePage()));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onSurface: Colors.transparent,
              shadowColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              elevation: 0,
            ),
            child: Stack(
              children: const [
                Image(
                  height: 300,
                  width: double.infinity,
                  image: AssetImage("images/home_page_mag_3.jpeg"),
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MagazineExamplePage extends StatelessWidget {
  const MagazineExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade50,
        foregroundColor: Colors.black,
        title: const Text("Magazine Example Page"),
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.orange.shade100.withOpacity(0.7),
      ),
    );
  }
}

class HomeWidgetExamplePage extends StatelessWidget {
  const HomeWidgetExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade50,
        foregroundColor: Colors.black,
        title: const Text("Home Widget Example Page"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.orange.shade100.withOpacity(0.7),
            child: ListView(
              children: [
                Container(
                  width: 20,
                  height: 300,
                  color: Colors.red,
                )
              ],
            )),
      ),
    );
  }
}
