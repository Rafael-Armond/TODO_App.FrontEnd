import 'package:Todo_App/views/login/login_view.dart';
import 'package:Todo_App/views/shared/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CadastroView extends StatefulWidget {
  @override
  _CadastroViewState createState() => _CadastroViewState();
}

class _CadastroViewState extends State<CadastroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginView()));
            },
          )
        ],
        title: Center(
          child: Text("Cadastro"),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.purple,
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
      ),
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
        alignment: Alignment.topCenter,
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
                    labelText: "Nome",
                    borderRadius: 8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomTextFormField(
                    labelText: "E-mail",
                    borderRadius: 8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomTextFormField(
                    labelText: "Senha",
                    borderRadius: 8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomTextFormField(
                    labelText: "Confirme sua senha",
                    borderRadius: 8,
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
