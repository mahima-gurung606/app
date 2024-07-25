import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _rePassword = TextEditingController();

  bool isObs = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registration"),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: _firstName,
                  decoration: InputDecoration(
                    label: Text("First Name"),
                    hintText: "First Name",
                    hintStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    suffix: Icon(Icons.abc),
                    //prefix: Icon(Icons.abc),
                    // prefixIcon: Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _lastName,
                  decoration: InputDecoration(
                    label: Text("Enter your last name"),
                    hintText: "Enter Last Name",
                    hintStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    // suffix: Icon(Icons.email),
                    // prefix: Icon(Icons.email),
                    // prefixIcon: Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    label: Text("Enter your email"),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),

                    //suffix: Icon(Iconsl),
                    // prefix: Icon(Icons.abc),
                    // prefixIcon: Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    label: Text("Enter your email"),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),

                    //suffix: Icon(Iconsl),
                    // prefix: Icon(Icons.abc),
                    // prefixIcon: Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _rePassword,
                  obscureText: isObs,
                  decoration: InputDecoration(
                    label: Text(" Enter your Password"),
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    suffix: IconButton(
                      onPressed: () {
                        isObs = !isObs;
                        setState(() {
                          _rePassword;
                        });
                      },
                      icon: Icon(Icons.visibility),
                    ),
                    //prefix: Icon(Icons.abc),
                    //prefixIcon: Icon(Icons.arrow_back),
                  ),
                ),
                MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    color: Colors.blue,
                    child: Text("Sign Up"),
                    onPressed: () {
                      _formKey.currentState!.validate();
                    }),
              ],
            ),
          ),
        )));
  }
}
