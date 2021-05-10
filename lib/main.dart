import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gas Naural',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ), //fin de tema
      //ruta de ventanas
      routes: <String, WidgetBuilder>{
        "/inicio": (BuildContext context) => Inicio(),
        "/gasNatural": (BuildContext context) => Gasnatural(),
        "/servico": (BuildContext context) => Servicio(),
        "/contacto": (BuildContext context) => Contacto(),
      }, //fin de rutas
      home: Inicio(),
    ); //fin de material app
  } //fin de widget build
} //fin de mi gas natural heretando widget sin estado

class Gasnatural extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Gas Natural'),
        backgroundColor: Colors.blueAccent,
        //cambia color xd .............
      ), //fin de AppBar
      body: Center(
        child: Text("Empresa: Gas Natural"),
      ), //fin de body center
    ); //fin de Scaffold
  } //fin de widget
} //fin de clase gasnatural

class Servicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Servicio'),
        backgroundColor: Colors.blueAccent,
        //cambia color xd .............
      ), //fin de AppBar
      body: Center(
        child: Text("seccion servicio"),
      ), //fin de body center
    ); //fin de Scaffold
  } //fin de widget
} //fin de servicio

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Contacto'),
        backgroundColor: Colors.blueAccent,
        //cambia color xd .............
      ), //fin de AppBar
      body: Center(
        child: Text("seccion contacto"),
      ), //fin de body center
    ); //fin de Scaffold
  } //fin de widget
} //fin de contacto

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          image: DecorationImage(
            image: NetworkImage("https://raw.githubusercontent.com/FaridCG343/MisImagenes/main/consejos-vacunas-peru.png"),
            alignment: Alignment.topCenter,
          ),
        ), //fin de box decoration
        child: Column(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/inicio");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Inicio",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ), //center
                      ), //sized box
                    ), //boton inicio
                  ), //padding
                ], //widget[]
              ), //fin columna 1
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/empresa");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Empresa",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ), //center
                      ), //sized box
                    ), //boton inicio
                  ), //padding
                ], //widget[]
              ), //fin columna 2
            ]), //fin de fila 1
          ], //fin de widget []
        ),
      ), //fin de container
    ); // fin de sacffold
  } //fin de widget build inicio
} //fin de inicio
