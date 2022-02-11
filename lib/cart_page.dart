import 'package:flutter/material.dart';

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
                    // color: Colors.blue,
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      "Your Shopping Bag is Empty",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                    // child: ,
                    ),
                RawMaterialButton(
                  child: const Text("Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {},
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
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: (MediaQuery.of(context).size.width),
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.white,
                        width: 40,
                        child: Text(
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
                Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20.0),
                  // child: ,
                ),
                const Text(
                  "hello",
                  style: TextStyle(fontSize: 50),
                  textAlign: TextAlign.center,
                ),
                Container(
                  color: Colors.blue,
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
