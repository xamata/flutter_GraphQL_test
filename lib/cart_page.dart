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
                // Container(
                //   width: double.infinity,
                //   height: 100,
                //   child: Row(
                //     children: [
                //       Container(
                //         width: double.infinity,
                //         decoration: const BoxDecoration(
                //           image: DecorationImage(
                //               image: AssetImage("images/background.jpeg"),
                //               fit: BoxFit.fitWidth),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
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
