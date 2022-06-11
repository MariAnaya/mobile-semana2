import 'package:flutter_application_3/Entities/registros.dart';

class ResponseFirebase{

  //aqui estamos consumiendo, creamos un objeto que 

  List<Registros>? registros;

  ResponseFirebase({this.registros});

  // ResponseFirebase.fromJson9(Map<String, dynamic> json) {

  //   if (json['Registros'] != null) {

  //     registros = <Registros>[];
  //     json['Registros'].forEach((v) {
  //       registros!.add(Registros.fromJson(v));
  //     });
  //   }
  // }

  ResponseFirebase.fromJson(List<dynamic> json) {
    registros = json.map((e) => Registros.fromJson(e)).toList();
  }
  
}