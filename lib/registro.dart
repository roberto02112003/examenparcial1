import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'registro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: registro(),
    );
  }
}

class registro extends StatefulWidget {
  @override
  _registroState createState() => _registroState();
}

class _registroState extends State<registro> {
  TextEditingController textFieldController1 = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrate'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: textFieldController1,
              decoration: InputDecoration(labelText: 'correo'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: textFieldController2,
              decoration: InputDecoration(labelText: 'contraseña'),
            ),
            SizedBox(height: 20),

            ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Enviar'),
        ),

 


          ],
        ),
      ),
    );
  }
}
