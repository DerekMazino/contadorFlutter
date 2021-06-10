import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  //Estilo de letra
  
  final estiloTexto =  TextStyle(fontSize: 25.0);
  int conteo = 10;
  @override
  Widget build(BuildContext context) {

    
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contador!',
        ),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//Para saber como queremos ubicar los widgets
          children: <Widget>[
            Text('Número de clicks:', style: estiloTexto,),
            Text( '$conteo', style: estiloTexto,)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { // Función anonima
          conteo = conteo + 1;
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}