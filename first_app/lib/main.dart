import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      // const ile kullanırsak depoda tek yer kapladığı için işimiz kolaylaştırır.
      home: Scaffold(
        body: GradientConrainer([
           Color.fromARGB(255, 113, 32, 132),
          Color.fromARGB(255, 38, 177, 38)
        ]),
      ),
    ),
  );
}
