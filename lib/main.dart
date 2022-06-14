import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/listFirebase.dart';
import 'package:flutter_application_3/views/listview_1.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // callDatabase();  
  runApp(const MyApp());
  }


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: CallFirebase()
    );
  }
}


// void callDatabase() {
//     DatabaseReference starCountRef = 
//     FirebaseDatabase.instance.ref('Registros');
//     starCountRef.onValue.listen((event){
//     final data = event.snapshot.value;
//     print(data.toString());
//     });
//   }