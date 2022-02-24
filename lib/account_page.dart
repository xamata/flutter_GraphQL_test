import 'package:flutter/material.dart';
import 'package:flutter_mobile_sim_test_1/signin_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    // create a global key that can provide validation
    final _formKey = GlobalKey<FormState>();
    return Form(
        key: _formKey,
        child: const Scaffold(
          body: SignInPage(),
        ));
  }
}
