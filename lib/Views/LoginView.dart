import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
class LoginView extends StatelessWidget {
  TextEditingController _emailController, _passwordController;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: true,
      body: new SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: <Widget>[
                new Image(
                  image: AssetImage('images/logo.png'),
                  width: 80.0,
                  height: 80.0,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                Text(
                  "Welcome Back,",
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign in to continue",
                  style:
                  TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60.0),
                ),
                Text(
                  "Roll Number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: _emailController,
                  style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                ),
                Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                MaterialButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  onPressed: () {},
                  minWidth: double.infinity,
                  height: 50.0,
                  color: Color(0xff6747CD),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new RichText(
                      text: new TextSpan(
                          children: [
                            new TextSpan(
                                text: 'New User?',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold)
                            ),
                            new TextSpan(
                              text: " Request",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color(0xff6747CD),
                                  fontWeight: FontWeight.bold
                              ),
                              recognizer: TapGestureRecognizer()..onTap = (){
                                print("Tapped");
                            }
                            )
                          ]
                      ),
                    )
                  ],
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          )),
    );
  }
}