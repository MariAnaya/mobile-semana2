import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_3/domain/firebase_connection.dart';

import '../Entities/registros.dart';



class CallFirebase extends StatefulWidget {
  const CallFirebase({Key? key}) : super(key: key);


  @override
  State<CallFirebase> createState() => _CallFirebaseState();
}

List<Registros> list_registros = [];




class _CallFirebaseState extends State<CallFirebase> {
  final conexion = new FirebaseConnection();

  void openAlertDialog(BuildContext context, info) {
    AlertDialog alert =
        AlertDialog(title: Text(info), content: Text(info), actions: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text('OK'),
      )
    ]);
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
  
  @override
  Widget build(BuildContext context) {
    
    callDatabase();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Car Wash '),
        ),
        body: ListView.builder(
          //tamaño de la lista
          itemCount: list_registros.length, 
          physics: const BouncingScrollPhysics(),
          itemBuilder:
              //el contexto es para saber en el arbol de widgets donde se encuentra ubicado el listview
              //el index hace referencia a cada elemento de la lista
              (contexto, 
                  index 
                  ) {
            return ListTile(
                //recibe 2 parametros
                leading: CircleAvatar(
                  // primera parte de la lista, recibe cualquier widget
                  backgroundImage:
                      Image.network(list_registros[index].image!).image,
                ),
                title: Text(//segunda parte de la lista, recibe cualquier widget
                    list_registros[index].nombre!),
                onTap: () {
                  openAlertDialog(context, list_registros[index].nombre);
                });
          },
        ));
  }

  void callDatabase() async {
    final respuesta = await conexion.getAllRegistros();
    if (list_registros.length == 0) {
      setState(() {
        
        list_registros = respuesta.registros!;
        print(list_registros);
      });
    }


  }

  



}