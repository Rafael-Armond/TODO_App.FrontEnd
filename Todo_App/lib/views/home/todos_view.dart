import 'package:Todo_App/views/login/login_view.dart';
import 'package:flutter/material.dart';

class TodosView extends StatefulWidget {
  @override
  _TodosViewState createState() => _TodosViewState();
}

class _TodosViewState extends State<TodosView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("TODO's")),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginView()));
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
