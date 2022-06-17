import 'package:firebase_database/firebase_database.dart';

import '../Entities/registros.dart';
import '../Entities/response_firebase.dart';

class FirebaseConnection {

  //devuelve la instancia de la base de datos
    static final FirebaseDatabase _database = FirebaseDatabase.instance;

    DatabaseReference instanceFirebase(){
      return _database.ref('/Registros');
    }


Future<ResponseFirebase> getAllRegistros() async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      print('-----------------------------');      
      print(response.value.runtimeType);
      final datos = Map<String, dynamic>.from(response.value as Map);
      final registers = ResponseFirebase.fromJson(datos.values.toList());
      print(registers);
      return registers;
    } catch (e) {
      rethrow;
    }
  }
}