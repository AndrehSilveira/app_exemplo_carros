import 'package:flutter/material.dart';

class WidgetCarro extends StatelessWidget {
  //ATRIBUTOS
  //Os atributos serão utilizados para receber dados no momento
  //da cração do Widget
  final String marca;
  final String modelo;
  final String foto;

  //CONSTRUTOR
  const WidgetCarro(this.marca, this.modelo, this.foto,
    {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //MARGENS
      //margin: EdgeInsets.all(20),
      //margin: EdgeInsets.only(top: 20),
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),

      //ESPAÇAMENTO INTERNO
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),

      width: MediaQuery.of(context).size.width * 0.75,
      //height: 350,

      //DECORAÇÃO
      decoration: BoxDecoration(
          color: Colors.deepPurple[400],

          //BORDAS
          border: Border.all(color: Colors.deepPurple, width: 2),

          //BORAS ARREDONDADAS
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          )),

      child: Column(children: [
        Text(this.marca, style: 
          TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple[300],
            )),
        Text(this.modelo, style: 
          TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            color: Colors.deepPurple[200],
            )
          ),

          //FOTO DO CARRO
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Image.asset(this.foto),
          ),
      ]),
    );
  }
}
