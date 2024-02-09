import 'package:examen/registro.dart';
import 'package:examen/sesion.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Two Fields Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TwoFieldsPage(),
    );
  }
}

class TwoFieldsPage extends StatefulWidget {
  @override
  _TwoFieldsPageState createState() => _TwoFieldsPageState();
}

class _TwoFieldsPageState extends State<TwoFieldsPage> {
  TextEditingController textFieldController1 = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();
  
  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicia Sesion'),
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
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => sesion()),
            );
          },

                child: Text('Enviar'),
            ),
            
            ElevatedButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => registro()),
            );
          },

                child: Text('Registrate si no tienes cuenta'),
            ),
          ],
        ),
      ),
    );
  }
}
