import 'package:Todo_App/views/cadastro/cadastro_view.dart';
import 'package:Todo_App/views/home/todos_view.dart';
import 'package:Todo_App/views/shared/custom_button.dart';
import 'package:Todo_App/views/shared/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              Colors.purple[800],
              Colors.purple[700],
              Colors.purple[600],
              Colors.purple[500],
            ],
          ),
        ),
        alignment: Alignment.center,
        child: Card(
          margin: const EdgeInsets.all(32),
          elevation: 16,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomTextFormField(
                    labelText: "E-mail",
                    prefix: Icon(Icons.account_circle),
                    inputType: TextInputType.emailAddress,
                    borderRadius: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomTextFormField(
                    labelText: "Senha",
                    prefix: Icon(Icons.lock),
                    obscure: true,
                    borderRadius: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomButton(
                        text: "Cadastrar",
                        height: 45,
                        elevation: 8,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => CadastroView()));
                        },
                      ),
                      CustomButton(
                        text: "Login",
                        backgroundColor: Colors.deepPurpleAccent,
                        height: 45,
                        textColor: Colors.white,
                        elevation: 8,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => TodosView()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
