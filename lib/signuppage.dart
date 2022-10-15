import 'package:flutter/material.dart';
import 'package:loginpage/loginpage.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1647642891405-fc8a70cab67f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1964&q=80"),
                fit: BoxFit.fitHeight),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 180),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38.0, left: 25),
                  child: Text(
                    "Create an account",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 23),
                  child: Text(
                    " Start your carrer with us.",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    key: _formkey,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 16),
                            child: TextFormField(
                              validator: (value) {
                                var namevalue = RegExp(r"^[a-zA-Z]")
                                    .hasMatch(value.toString());
                                if (value!.isEmpty) {
                                  return "name field is empty";
                                }
                                if (namevalue == false) {
                                  return "Invalid name";
                                }
                              },
                              decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  labelText: "Name",
                                  prefixIcon: Icon(Icons.person),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 16),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email field is empty";
                                }

                                var email = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value.toString());
                                if (email == false) {
                                  return "Invalid email ";
                                }
                              },
                              decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  labelText: "Email",
                                  prefixIcon: Icon(Icons.email),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 16),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password is empty";
                                }
                                if (value.length < 5) {
                                  return "Passowrd is too short";
                                }
                                if (value.length > 10) {
                                  return "Password is too long";
                                }
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  labelText: "Password",
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.grey,
                                  ),
                                  suffix: Icon(Icons.remove_red_eye_rounded),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (_formkey.currentState!.validate()) {
                                print(_showMyDialog());
                              }
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.width * .15,
                              width: MediaQuery.of(context).size.width * .85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 244, 185, 95)),
                              child: Center(
                                  child: Text(
                                'Sign up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: GestureDetector(
                        onTap: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginpage()));
                          }
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * .07,
                          width: MediaQuery.of(context).size.width * .3,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.black38),
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Center(
                              child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> _showMyDialog() async {
    return showDialog<dynamic>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.red,
          title: const Text(
            'Congralatuion',
            style: TextStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'Your account has been registered.',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Click',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (Context) => Loginpage()));
              },
            ),
          ],
        );
      },
    );
  }
}
