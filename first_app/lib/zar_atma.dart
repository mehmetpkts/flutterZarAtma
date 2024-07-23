import 'package:flutter/material.dart';
import 'dart:math';

// StatefulWidget üzerinde çalışıyorsak iki tane class ile çalışmalıyız.

final randomizer = Random();

class ZarAtma extends StatefulWidget {
  const ZarAtma({super.key});

  @override
  State<ZarAtma> createState() {
    return _ZatAtmaState();
  }
}

// İkinci class'ımızın ismi birindci class'ımızın isminin _ ile başlaması ve sonuna State eklenmesi ile oluşturulur ve bu class extends'ini yukarıdaki State<ZarAtma>'dan alır.
class _ZatAtmaState extends State<ZarAtma> {
  var mevcutZarAtma = 2;

  void zarAt() {
    setState(() {
      mevcutZarAtma = randomizer.nextInt(6) + 1; // Random.nextInt ifadesi 0-5 arasında olduğu için + 1 yapıldı.
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$mevcutZarAtma.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ), // iki farklı widget arasına boşluk bırakır.
        TextButton(
          onPressed: zarAt,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),    // bir widget'in kenarına boşluk bırakır.
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Zar at'),
        )
      ],
    );
  }
}
