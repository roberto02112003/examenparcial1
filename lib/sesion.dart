import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INICIO DE SESION EXITOSO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: sesion(),
    );
  }
}

class sesion extends StatefulWidget {
  @override
  _sesionState createState() => _sesionState();
}

class _sesionState extends State<sesion> {
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
            
            SizedBox(height: 20),
            TextField(
              controller: textFieldController2,
              decoration: InputDecoration(labelText: 'Inicio de sesion exitoso'),
            ),
            SizedBox(height: 20),

            ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('cerrar sesion'),
        ),

          ],
        ),
      ),
    );
  }
}
