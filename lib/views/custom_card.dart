import 'package:flutter/material.dart';

import '../Entities/registros.dart';



class CustomCard extends StatelessWidget {
  
final Registros registro;

CustomCard(this.registro);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
      child: Card(
        color: Color.fromARGB(161, 235, 236, 238),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: SizedBox(
          width: 370,
          height: 120,
          child:Column(
            
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            CircleAvatar(backgroundImage: Image.network(registro.image!).image),
            Center(child: Text(registro.nombre!)), 
            Center(child: Text(registro.apellido!)),
            ],
        ),         
    ),
      
    )
    ));
  }


}

