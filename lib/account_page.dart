import 'package:email_validator/email_validator.dart';
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
                            TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: const TextStyle(fontSize: 18),
                              // controller: _controller,
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
                              child: TextField(
                                autocorrect: false,
                                autofocus: false,
                                obscureText: false,
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
                                              ForgotPasswordForm()),
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
                              constraints: const BoxConstraints(minWidth: 300),
                              splashColor: Colors.black12,
                              fillColor: Colors.black,
                              padding: const EdgeInsets.symmetric(vertical: 12),
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

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _controller = TextEditingController();
  final _submittedController = TextEditingController();
  // String _errorText = '';

  // dispose it when the widget is unmounted
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  checkEmail() {
    // outcome = Tuple2<bool, String>(false, _errorText);
    if (EmailValidator.validate(_controller.text)) {
      _controller.text = '';
      // _errorText = '';
      return true;
    } else {
      // _errorText = "Enter a valid email";
      return false;
    }
  }

  String? get _errorText {
    // at any time, we can get the text from _controller.value.text
    final text = _controller.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    if (EmailValidator.validate(text)) {
      return '';
    } else {
      return "Enter a valid email";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: const Text("Fogot Password?", style: TextStyle(fontSize: 24))),
      // body: SingleChildScrollView(child:
      body: Stack(
        // alignment: AlignmentDirectional.topStart,
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    "Enter your email below to recover your password",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    controller: _controller,
                    autocorrect: false,
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "Email",
                        errorText: _errorText,
                        filled: true,
                        border: InputBorder.none),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        checkEmail();
                      },
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.grey),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

// defind a corresponding state class
// this class holds data related to the form
class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  @override
  Widget build(BuildContext context) {
    // create a global key that identifies the form widget
    // allows validation of the form
    final _formKey = GlobalKey<FormState>();
    return Form(
        key: _formKey,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 0,
              title: const Text("Fogot Password?",
                  style: TextStyle(fontSize: 24))),
          // body: SingleChildScrollView(child:
          body: Stack(
            // alignment: AlignmentDirectional.topStart,
            fit: StackFit.expand,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        "Enter your email below to recover your password",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        //validator
                        validator: (value) {
                          if (EmailValidator.validate(value!)) {
                            return null;
                          } else {
                            return "Please enter a valid email";
                          }
                        },
                        // controller: _controller,
                        autocorrect: false,
                        autofocus: true,
                        decoration: InputDecoration(
                            hintText: "Email",
                            // errorText: _errorText,
                            filled: true,
                            border: InputBorder.none),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Submitted!"),
                                ),
                              );
                            }
                            // checkEmail();
                          },
                          child: const Text(
                            "SUBMIT",
                            style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.grey),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
