import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    // create a global key that can provide validation
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Scaffold(
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (value) {
                                  if (EmailValidator.validate(value!)) {
                                    return null;
                                  } else {
                                    return "Please enter a valid Username";
                                  }
                                },
                                autocorrect: false,
                                autofocus: false,
                                style: const TextStyle(fontSize: 18),
                                decoration: InputDecoration(
                                  hintText: 'UserName',
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  contentPadding: const EdgeInsets.all(10.0),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 25,
                                ),
                                child: TextFormField(
                                  autocorrect: false,
                                  autofocus: false,
                                  obscureText: true,
                                  style: const TextStyle(fontSize: 18),
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    contentPadding: const EdgeInsets.all(10.0),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    child: const Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        overlayColor:
                                            MaterialStateProperty.all<Color>(
                                      Colors.white,
                                    )),
                                  ),
                                ],
                              ),
                              RawMaterialButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text("Submitted!"),
                                      ),
                                    );
                                  }
                                },
                                constraints:
                                    const BoxConstraints(minWidth: 300),
                                splashColor: Colors.black12,
                                fillColor: Colors.black,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
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
      ),
    );
  }
}
