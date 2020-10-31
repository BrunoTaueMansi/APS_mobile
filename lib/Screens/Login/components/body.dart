import 'package:aps/Screens/Home/home_screen.dart';
import 'package:aps/Screens/Signup/signup_screen.dart';
import 'package:aps/components/Commun/already_have_an_account_check.dart';
import 'package:aps/components/Commun/background.dart';
import 'package:aps/components/Commun/rounded_button.dart';
import 'package:aps/components/Commun/rounded_input_field.dart';
import 'package:aps/components/Commun/rounded_password_field.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.2),
          RoundedInputField(
            hintText: "E-mail",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Login",
            press: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return HomeScreen();
                  }
                )
              );
            },
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return SignupScreen();
                  }
                )
              );
            },
          )
        ]
      ),
    );
  }
}