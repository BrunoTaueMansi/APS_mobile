import 'package:flutter/material.dart';

import '../../constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Não possui uma conta? " : "Possui uma conta? ",
          style: TextStyle(
            color: kPrimaryColor
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Cadastre-se" : "Logar",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold
            ),),
        )
      ],
    );
  }
}