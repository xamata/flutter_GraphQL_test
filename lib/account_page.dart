import 'package:flutter/material.dart';
import 'package:flutter_mobile_sim_test_1/products_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Future.delayed(
    //     const Duration(milliseconds: 2000), () => _controller.text = '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
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
            ),
          ),
          SingleChildScrollView(
            child: Column(
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
                        // height: 300,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(fontSize: 18),
                              controller: _controller,
                              decoration: InputDecoration(
                                hintText: 'UserName',
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.grey[200],
                                contentPadding: EdgeInsets.all(10.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
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
                                // const Padding(
                                //   padding: EdgeInsets.only(bottom: 8.0),
                                //   child: Text(
                                //     'Forgot Password?',
                                //     style: TextStyle(
                                //         color: Colors.red,
                                //         fontSize: 14,
                                //         decoration: TextDecoration.underline),
                                //   ),
                                // ),
                                TextButton(
                                  child: const Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPasswordPage()),
                                    );
                                  },
                                  style: ButtonStyle(
                                      overlayColor:
                                          MaterialStateProperty.all<Color>(
                                    Colors.white,
                                  )),
                                ),
                              ],
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              constraints: BoxConstraints(minWidth: 200),
                              splashColor: Colors.black12,
                              fillColor: Colors.red,
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
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
          ),
        ],
      ),
    );
  }
}

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: Text("Fogot Password", style: TextStyle(fontSize: 24))),
      // body: SingleChildScrollView(child:
      body: Stack(
        // alignment: AlignmentDirectional.topStart,
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    "Enter email below to recover your passwrod",
                    style: TextStyle(
                        fontFamily: "RaleWay",
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
