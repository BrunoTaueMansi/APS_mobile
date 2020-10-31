import 'package:aps/Screens/Login/login_screen.dart';
import 'package:aps/Screens/Signup/signup_screen.dart';
import 'package:aps/components/Commun/background.dart';
import 'package:aps/components/Commun/rounded_button.dart';
import 'package:aps/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Bem-vindo!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: size.height *0.4),
          RoundedButton(
            text: "Login",
            color: kPrimaryColor,
            textColor: Colors.white,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();
                  }
                ),
              );
            },
          ),
          RoundedButton(
            text: "Cadastrar",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return SignupScreen();
                  }
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

