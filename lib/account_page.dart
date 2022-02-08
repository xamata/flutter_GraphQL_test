import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        // alignment: AlignmentDirectional.topStart,
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.jpeg"),
                fit: BoxFit.cover,
                alignment: Alignment(0.0, -5.0),
              ),

              //     .cover, //as small as possible while still covering the entire target box
              // colorBlendMode: BlendMode.darken,
              // color: Colors.black54,
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      fontFamily: "RaleWay",
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: Text(
                  "Become a member to enjoy exclusive savings on your favorite items.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Stack(children: <Widget>[
              //   SingleChildScrollView(
              //     child: Container(
              //       height: 300,
              //       width: 300,
              //       padding: const EdgeInsets.symmetric(
              //           horizontal: 30, vertical: 25),
              //       decoration: BoxDecoration(
              //         color: Colors.blue,
              //         borderRadius: BorderRadius.circular(20),
              //         shape: BoxShape.rectangle,
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           TextField(
              //             autocorrect: false,
              //             autofocus: false,
              //             style: const TextStyle(fontSize: 18),
              //             decoration: InputDecoration(
              //                 hintText: 'UserName',
              //                 border: InputBorder.none,
              //                 filled: true,
              //                 fillColor: Colors.grey[200],
              //                 contentPadding: const EdgeInsets.all(10.0),
              //                 hoverColor: Colors.indigo),
              //             cursorColor: Colors.purple,
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.symmetric(
              //               vertical: 25,
              //             ),
              //             child: TextField(
              //               autocorrect: false,
              //               autofocus: false,
              //               obscureText: false,
              //               style: const TextStyle(fontSize: 18),
              //               decoration: InputDecoration(
              //                 hintText: "Password",
              //                 filled: true,
              //                 fillColor: Colors.grey[200],
              //                 contentPadding: const EdgeInsets.all(10.0),
              //               ),
              //             ),
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.end,
              //             children: const [
              //               Text(
              //                 'Forgot Password?',
              //                 style: TextStyle(color: Colors.red, fontSize: 14),
              //               )
              //             ],
              //           ),
              //           RawMaterialButton(
              //             onPressed: () {},
              //             constraints: const BoxConstraints(minWidth: 200),
              //             splashColor: Colors.green,
              //             fillColor: Colors.red,
              //             padding: const EdgeInsets.symmetric(vertical: 12),
              //             child: const Text(
              //               "Login",
              //               style: TextStyle(color: Colors.white, fontSize: 15),
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //   )
              // ])
            ],
          ),
        ],
      ),
    );
  }
}
