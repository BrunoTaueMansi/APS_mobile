import 'package:aps/Screens/Home/home_screen.dart';
import 'package:aps/Screens/Signup/signup_screen.dart';
import 'package:aps/components/Commun/already_have_an_account_check.dart';
import 'package:aps/components/Commun/background.dart';
import 'package:aps/components/Commun/rounded_button.dart';
import 'package:aps/components/Commun/rounded_input_field.dart';
import 'package:aps/components/Commun/rounded_password_field.dart';
import 'package:flutter/material.dart';

class FormLoginScreen extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState  extends State<FormLoginScreen>{
  String _email;
  String _password;

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildEmail() {
    return RoundedInputField(
      validator: (String value) {
        if (value.isEmpty) {
          return 'Necessário preencher o e-mail';
        }
        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Por favor, utilize um e-mail valido';
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
      onChanged: (value) {}
    );
  }

  Widget _buildPassword() {
    return RoundedPasswordField(
      validator: (String value) {
        if (value.isEmpty) {
          return 'Necessário preencher a senha';
        }
        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
      onChanged: (value) {}
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.2),
            _buildEmail(),
            _buildPassword(),
            RoundedButton(
              text: "Login",
              press: () {
                if(!_formKey.currentState.validate()){
                  return;
                }

                _formKey.currentState.save();

                Navigator.push(
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
      ),
    );
  }
}