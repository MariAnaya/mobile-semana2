import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body: Card(
       clipBehavior: Clip.antiAlias,
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
       color: Color.fromARGB(160, 155, 180, 231),
       
       child: Column(
         children: <Widget>[
           Image.asset('assets/images/mauro.png'),
           Container(
             padding: EdgeInsets.all(100),
             child: Container(
              child: Column(
            
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: const [
            Center(child: Text("Mauricio Arias")),
            Center(child: Text("Software Developer")), 
            Center(child: Text("marias@lsv-tech.com")),
            Center(child: Text("3205438789")),
            ],
        ),  
             ),
           )
         ],
       )));

    
  }
}