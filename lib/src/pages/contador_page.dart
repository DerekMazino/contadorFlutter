import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

//Estado del SatefulWidget, debe ser privado
class _ContadorPageState extends State<ContadorPage>{
  
  final _estiloTexto =  TextStyle(fontSize: 25.0);
  int _conteo = 0;
  
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
            Text('Número de clicks:', style: _estiloTexto,),
            Text( '$_conteo', style: _estiloTexto,)
          ],
        )
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  //Crear la funcion para dibujar los botones - Buenas practicas

  Widget _crearBotones(){
    return Row(
      children: <Widget>[
        FloatingActionButton(
        onPressed: _agregar  , // Sin parentecir por que de tenerlos se ejecutara cuando se forme la vista
        child: Icon(Icons.add),
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
        onPressed: _quitar,
        child: Icon(Icons.remove),
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
        onPressed: _vaciar,
        child: Icon(Icons.exposure_zero),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  void _agregar(){
    setState(() => _conteo++);
  }

  void _quitar(){
    setState(() => _conteo--);
  }

  void _vaciar(){
    setState(() => _conteo = 0);
  }

}