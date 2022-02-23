import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            title: Text("Create Account Page", style: TextStyle(fontSize: 24)),
            elevation: 0,
          ),
          body: ListView(
            children: [
              Container(
                color: Colors.black,
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      left: 60,
                      top: 40,
                      child: Container(
                        height: 120,
                        width: 120,
                        color: Colors.red,
                        alignment: Alignment.topLeft,
                      ),
                    )
                  ],
                ),
              ),
              infoUI(),
            ],
          )),
    );
  }

  Widget infoUI() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 150,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "First Name",
                    filled: true,
                    // contentPadding: EdgeInsets.all(10.0),
                  ),
                  autocorrect: false,
                  autofocus: false,
                ),
              ),
              Spacer(),
              Container(
                height: 40,
                width: 150,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Last Name",
                    filled: true,
                    // contentPadding: EdgeInsets.all(10.0)
                  ),
                  autocorrect: false,
                  autofocus: false,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Street Address",
              filled: true,
              contentPadding: EdgeInsets.all(10.0),
            ),
            autocorrect: false,
            autofocus: false,
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "City",
              filled: true,
              contentPadding: EdgeInsets.all(10.0),
            ),
            autocorrect: false,
            autofocus: false,
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "State",
              filled: true,
              contentPadding: EdgeInsets.all(10.0),
            ),
            autocorrect: false,
            autofocus: false,
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Zip Code",
              filled: true,
              contentPadding: EdgeInsets.all(10.0),
            ),
            autocorrect: false,
            autofocus: false,
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Email",
              filled: true,
              contentPadding: EdgeInsets.all(10.0),
            ),
            autocorrect: false,
            autofocus: false,
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Phone",
              filled: true,
              contentPadding: EdgeInsets.all(10.0),
            ),
            autocorrect: false,
            autofocus: false,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
