import 'package:aps/Screens/Result/result_screen.dart';
import 'package:aps/components/Commun/background.dart';
import 'package:aps/components/Commun/rounded_button.dart';
import 'package:aps/components/Commun/rounded_input_field.dart';
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
          Text("Como você esta se sentindo hoje?\nResponda as perguntas abaixo"),
          SizedBox(height: size.height * 0.05),
          Text("Está sentindo náusea?"),
          RoundedInputField(
            icon: null,
          ),
          Text("Está com congestão nasal?"),
          RoundedInputField(
            icon: null,
          ),
          Text("Está com tosse?"),
          RoundedInputField(
            icon: null,
          ),
          Text("Está com dor? Se sim, aonde?"),
          RoundedInputField(
            icon: null,
          ),
          RoundedButton(
            text: "Confirmar",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return ResultScreen();
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