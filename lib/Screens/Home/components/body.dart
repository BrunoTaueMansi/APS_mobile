import 'package:aps/Screens/Welcome/welcome_screen.dart';
import 'package:aps/components/Commun/background.dart';
import 'package:aps/components/Commun/rounded_button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("ERRO! Volte para a tela inicial"),
          RoundedButton(
            text: "VOLTAR",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return WelcomeScreen();
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