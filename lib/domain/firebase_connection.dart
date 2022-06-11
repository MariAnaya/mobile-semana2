import 'package:firebase_database/firebase_database.dart';

import '../Entities/registros.dart';
import '../Entities/response_firebase.dart';

class FirebaseConnection{

  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  

  //retorna la instancia a la base de datos
  DatabaseReference instanceFirebase() {
    FirebaseDatabase database = FirebaseDatabase.instance;
    return database.ref('/Registros');
  }

//retorna la lista de registros


Future<ResponseFirebase> getRegisters() async {
  try {
    DataSnapshot response = await _resgisterRef.get();
    final registers = ResponseFirebase.fromJson(response.value as List);
     return registers;
  
  } catch (e) {
    rethrow;
  }
}





//retorne un registro en especifico.






}