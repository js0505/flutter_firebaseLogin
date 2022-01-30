import 'package:firebase_login/My_button/my_button.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MyButton(
            image: Image.asset('images/glogo.png'),
            text: Text(
              'Login with Google',
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
            ),
            onPressed: () {},
            radius: 4.0,
            style: ElevatedButton.styleFrom(primary: Colors.white),
          ),
          SizedBox(
            height: 10.0,
          ),
          MyButton(
            image: Image.asset(
              'images/flogo.png',
            ),
            text: Text(
              'Login with Facebook',
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
            onPressed: () {},
            radius: 4.0,
            style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
          ),
          SizedBox(
            height: 10.0,
          ),
          MyButton(
            image: Icon(
              Icons.email,
              color: Colors.white,
              size: 30.0,
            ),
            text: Text(
              'Login with email',
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
            onPressed: () {},
            radius: 4.0,
            style: ElevatedButton.styleFrom(primary: Colors.green),
          ),
        ],
      ),
    );
  }
}
