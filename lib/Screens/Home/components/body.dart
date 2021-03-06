import 'package:aps/Screens/Appointment/Appointment_screen.dart';
import 'package:aps/components/Commun/background.dart';
import 'package:aps/components/Commun/rounded_button.dart';
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
            "Olá!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Text(
            "      Bem vindo ao Consultapp, no nosso aplicativo\n você poderá consultar rapidamente a cauda para\n o seu mau estar. Basta clicar no botão abaixo para\n começar a sua consulta!",
            style: TextStyle(
              fontSize: 15
            ),
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: "Consultar",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return AppointmentScreen();
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