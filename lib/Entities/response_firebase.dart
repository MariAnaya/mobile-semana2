import 'package:flutter_application_3/Entities/registros.dart';

class ResponseFirebase{

  //aqui estamos consumiendo, creamos un objeto que 

  List<Registros>? registros;

  ResponseFirebase({this.registros});


  ResponseFirebase.fromJson(List<dynamic> json) {
    registros = json.map((e) => Registros.fromJson(Map<String, dynamic>.from(e  as Map))).toList();
  }
  
}