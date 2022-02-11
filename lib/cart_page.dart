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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
        ));
  }
}
