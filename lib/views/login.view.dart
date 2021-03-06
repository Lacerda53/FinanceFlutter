import 'package:finance_mobile/views/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const logo = 'assets/images/Logo.svg';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            child: Center(
              child: SvgPicture.asset(
                logo,
                width: 100,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Column(
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 80,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Color(0xFFCDD1F3), blurRadius: 20)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Email Address",
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 15),
                              ),
                              Theme(
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(fontSize: 15),
                                  decoration: InputDecoration(
                                      hintText: 'Ex. Username@gmail.com',
                                      border: InputBorder.none,
                                      icon: Icon(Icons.mail_outline)),
                                ),
                                data: Theme.of(context)
                                    .copyWith(primaryColor: primaryColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                //PASSWORD
                SizedBox(
                  height: 30,
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 80,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Color(0xFFCDD1F3), blurRadius: 20)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Password",
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 15),
                              ),
                              Theme(
                                child: TextField(
                                  style: TextStyle(color: Color(0xFF333333)),
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: !this._showPassword,
                                  cursorColor: primaryColor,
                                  decoration: InputDecoration(
                                      hintText: '********',
                                      border: InputBorder.none,
                                      icon: Icon(
                                        Icons.lock_outline,
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(Icons.remove_red_eye,
                                            color: this._showPassword
                                                ? Colors.blue
                                                : Colors.grey),
                                        onPressed: () {
                                          setState(() => this._showPassword =
                                              !this._showPassword);
                                        },
                                      )),
                                ),
                                data: Theme.of(context)
                                    .copyWith(primaryColor: primaryColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Padding(
            child: FlatButton(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 18,
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
              color: primaryColor,
              padding: EdgeInsets.all(8.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            padding: EdgeInsets.only(top: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    "Signup",
                    style: TextStyle(
                        color: Color(0xFF898989), fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Color(0xFF898989),
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
