import 'package:aps/Screens/Home/home_screen.dart';
import 'package:aps/components/Commun/background.dart';
import 'package:aps/components/Commun/rounded_button.dart';
import 'package:aps/components/Database/database_helper.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final dbHelper = DatabaseHelper.instance;
  String email;
  String senha;
  
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Estamos calculando seu resultado.\n Ele será enviado por e-mail, em breve!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            textAlign: TextAlign.center,
          ),
          RoundedButton(
            text: "Voltar",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return HomeScreen();
                  }
                )
              );
            },
          )
        ],
      ),
    );
  }
}

