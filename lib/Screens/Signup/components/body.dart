import 'package:aps/Screens/Login/login_screen.dart';
import 'package:aps/components/Commun/already_have_an_account_check.dart';
import 'package:aps/components/Commun/background.dart';
import 'package:aps/components/Commun/rounded_button.dart';
import 'package:aps/components/Commun/rounded_input_field.dart';
import 'package:aps/components/Commun/rounded_password_field.dart';
import 'package:aps/components/Database/database_helper.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final dbHelper = DatabaseHelper.instance;
  String email;
  String senha;
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "CADASTRAR",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: size.height * 0.2),
          RoundedInputField(
            hintText: "E-mail",
            onChanged: (email) {},
          ),
          RoundedPasswordField(
            onChanged: (senha) {},
          ),
          RoundedButton(
            text: "Cadastrar",
            press: () {
              cadastrar(email, senha);
            },
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();
                  }
                )
              );
            },
          )
        ],
      ),
    );
  }

  void cadastrar(String email, String senha) async {
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

    if (emailValid) {
      Map<String, dynamic> row = {
        DatabaseHelper.columnEmail : email,
        DatabaseHelper.columnSenha  : senha
      };
      final id = await dbHelper.insert(row);
      print('inserted row id: $id');
    }
    else
      print('Erro: Email invalid');
  }
}

