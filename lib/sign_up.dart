import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:Splash_SignIn_and_SignUp_Screens/Animation/FadeAnimation.dart';
import 'package:Splash_SignIn_and_SignUp_Screens/configuration.dart';
import 'package:Splash_SignIn_and_SignUp_Screens/sing_in.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            backgroundColor: Colors.black87,
            leading: IconButton(
              icon: new Icon(Icons.arrow_back, color: Color(0xffF3C179)),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: FadeAnimation(
            1.6,
            Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(color: Colors.black87),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 30),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Sign up\n\n",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(30),
                              color: Color(0xffF3C179),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Let's create your account",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(22),
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ])),
                        SizedBox(height: 40),
                        FadeAnimation(
                            1.4,
                            Container(
                              width: 330,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 45,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[850]),
                                            top: BorderSide(
                                                color: Colors.grey[850]),
                                            right: BorderSide(
                                                color: Colors.grey[850]),
                                            left: BorderSide(
                                                color: Colors.grey[850]))),
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          hintText: "UserName",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[600]),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 45,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[850]),
                                            top: BorderSide(
                                                color: Colors.grey[850]),
                                            right: BorderSide(
                                                color: Colors.grey[850]),
                                            left: BorderSide(
                                                color: Colors.grey[850]))),
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          hintText: "Email or Phone number",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[600]),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 45,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[850]),
                                            top: BorderSide(
                                                color: Colors.grey[850]),
                                            right: BorderSide(
                                                color: Colors.grey[850]),
                                            left: BorderSide(
                                                color: Colors.grey[850]))),
                                    child: TextField(
                                      obscureText: true,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[600]),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(height: 20),
                        SizedBox(height: 70),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Have an account already ?  ",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " Log In",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Color(0xffF3C179),
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignIn()),
                                );
                                // single tapped
                              },
                          ),
                        ])),
                        SizedBox(height: 20),
                        FadeAnimation(
                            1.6,
                            Container(
                              height: 50,
                              width: 330,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                )),
          )),
    );
  }
}
