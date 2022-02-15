import 'package:flutter/material.dart';

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
        title: const Text("Settings"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: ListView(
            children: [
              accountButtonUI(),
              customerServiceButtonUI(),
              storeLocatorButtonUI(),
              socialLinksButtonUI(),
              giftCardButtonUI(),
              appSettingsButtonUI(),
            ],
          ),
        ),
      ),
    );
  }

  Widget accountButtonUI() {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.all(Colors.grey.shade200),
      ),
      child: SizedBox(
        height: 50,
        child: Row(
          children: const [
            Text(
              "Account",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black)
          ],
        ),
      ),
    );
  }

  Widget customerServiceButtonUI() {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.all(Colors.grey.shade200),
      ),
      child: SizedBox(
        height: 50,
        child: Row(
          children: const [
            Text(
              "Cusotomer Service",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black)
          ],
        ),
      ),
    );
  }

  Widget storeLocatorButtonUI() {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.all(Colors.grey.shade200),
      ),
      child: SizedBox(
        height: 50,
        child: Row(
          children: const [
            Text(
              "Store Locator",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black)
          ],
        ),
      ),
    );
  }

  Widget socialLinksButtonUI() {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.all(Colors.grey.shade200),
      ),
      child: SizedBox(
        height: 50,
        child: Row(
          children: const [
            Text(
              "Follow Us",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black)
          ],
        ),
      ),
    );
  }

  Widget giftCardButtonUI() {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.all(Colors.grey.shade200),
      ),
      child: SizedBox(
        height: 50,
        child: Row(
          children: const [
            Text(
              "Gift Card",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black)
          ],
        ),
      ),
    );
  }

  Widget appSettingsButtonUI() {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.all(Colors.grey.shade200),
      ),
      child: SizedBox(
        height: 50,
        child: Row(
          children: const [
            Text(
              "App Settings",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black)
          ],
        ),
      ),
    );
  }
}
