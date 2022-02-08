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
              color: Colors.white,
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
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      fontFamily: "RaleWay",
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: Text(
                  "Become a member to enjoy exclusive savings on your favorite items.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Stack(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Container(
                      height: 300,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            autocorrect: false,
                            autofocus: false,
                            style: TextStyle(fontSize: 18),
                            decoration: InputDecoration(
                              hintText: 'UserName',
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(10.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 25,
                            ),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              obscureText: false,
                              style: TextStyle(fontSize: 18),
                              decoration: InputDecoration(
                                hintText: "Password",
                                filled: true,
                                fillColor: Colors.grey[200],
                                contentPadding: EdgeInsets.all(10.0),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 14),
                                ),
                              )
                            ],
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            constraints: BoxConstraints(minWidth: 200),
                            splashColor: Colors.black12,
                            fillColor: Colors.red,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
