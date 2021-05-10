import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gas Naural',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ), //fin de tema
      //ruta de ventanas
      routes: <String, WidgetBuilder>{
        "/inicio": (BuildContext context) => Inicio(),
        "/gasNatural": (BuildContext context) => Gasnatural(),
        "/servicio": (BuildContext context) => Servicio(),
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
        backgroundColor: Colors.green,
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
        backgroundColor: Colors.amber,
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
        decoration: BoxDecoration(color: Colors.blueGrey[50], image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/Luhhii/mis_imagenes/main/MicrosoftTeams-image.png"), alignment: Alignment.topCenter)),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(children: <Widget>[
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
                          child: Text("INICIO", textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ) //fin de padding
                ] //fin de widget
                    ), //fin de columun
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/gasNatural");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("GAS NATURAL", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ), //r1 columna 2
              ], //fin de widget
            ), //fin de fila
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/servicio");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("SERVICIO", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/contacto");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("CONTACTO", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ], //fin de widget
        ), //fin de column child //fin de box decoration
      ), //fin de body center
    ); //fin de scaffold
  } //fin de widget
} //fin de clase inicio
