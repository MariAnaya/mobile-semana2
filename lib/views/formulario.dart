import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class Formulario extends StatelessWidget {
  const Formulario({Key? key}) : super(key: key);


@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 300,
                width: 300,
                child: Lottie.asset('assets/animations/form.json'),),
            const SizedBox(height: 20),
            const Text(
              "Formulario en construccion",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}