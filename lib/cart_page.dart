import 'package:flutter/material.dart';
import 'package:flutter_mobile_sim_test_1/account_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Your Cart",
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    "Your Shopping Bag is Empty",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                RawMaterialButton(
                  child: const Text("Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const AccountPage()),
                    );
                  },
                  constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width,
                      minHeight: 20),
                  padding: const EdgeInsets.all(12.0),
                  fillColor: Colors.black,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: const Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: (MediaQuery.of(context).size.width),
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.white,
                        width: 40,
                        child: const Text(
                          "or",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                RawMaterialButton(
                    onPressed: () {},
                    child: const Text("Create Account",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    fillColor: Colors.white,
                    shape: const ContinuousRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 2),
                    ),
                    constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width,
                        minHeight: 20.0),
                    padding: const EdgeInsets.all(12.0)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    // color: Colors.yellow,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: const Text(
                            "Discounts",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                            highlightColor: Colors.transparent,
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const AccountPage()),
                              );
                            },
                            child: Container(
                              // decoration: BoxDecoration(
                              //     // border: Border.all(color: Colors.black),
                              //     ),
                              child: const Text("Apply discounts",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline)),
                            ))
                      ],
                    ),
                  ),
                ),
                //TODO: Create cc Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Credit we trust:"),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        width: 40,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/credit_icons_1.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        width: 40,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/credit_icons_2.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        width: 40,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/credit_icons_3.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        width: 40,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("images/credit_icons_4.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    child: Text(
                      "Hello",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black)),
                  ),
                ),
                Container(
                  color: Colors.green,
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20.0),
                  // child: ,
                ),
              ],
            ),
          ),
        ));
  }
}
