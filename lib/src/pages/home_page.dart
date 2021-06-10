import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    //Estilo de letra
    final estiloTexto =  TextStyle(fontSize: 25.0);

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
            Text('0', style: estiloTexto,)
          ],
        )
      ),
    );
  }
}