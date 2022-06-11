import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/listview_1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //inicializamos la conexion
  await Firebase.initializeApp();
  //hacemos el llamado de la funcion que nos conecta
  callDatabase();

runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ListView1()      
    );
  }
  
}

//con este metodo, hacemos la conexion a nuestra base de datos, creada en realtimedatabase
void callDatabase(){
    DatabaseReference starCountRef =
    FirebaseDatabase.instance.ref('/Registros/2345600');
    starCountRef.onValue.listen((event) {
      final data = event.snapshot.value;
      print(data.toString());
    });
  }