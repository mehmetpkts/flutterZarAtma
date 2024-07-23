import 'package:first_app/zar_atma.dart';
import 'package:flutter/material.dart';

const startAlignment =
    Alignment.topLeft; // burada genelde var tipip kullanmak gerekir.
const endAlignment = Alignment
    .bottomRight; // ama bizim bu kullandığımız veriler de final ya da const kullanmak daha önemlidir çünkü final bu verilerin sonra değiştirilemeyeceği anlamına gelir ve biz de zaten bu yapıları bir daha değiştime gereğinde bulunmayız.Const ise zaten sabit değer anlamına gelir.



// const derleme zamanında sabitlenir ve final runtime zamanında sabitlenir.
class GradientConrainer extends StatelessWidget {   // adındanda anlaşılacağı üzerine StatefulWidget --> durum bilgisi olan widget'tir StatelessWidget --> durum bilgisi olmayan widget'tir.
  const GradientConrainer(this.colors,                    // her zaman mantıklı olan duruma göre bu iki widgetten birini kullanmaktır. Eğer değiken ve dinamik şetler varsa StatefulWidget kullanılır, sabit değerler varsa StatelessWidget kullanmamız yeterlidir.Projede Sabit olan yerleri StatelessWidget yapıp dinamik olan yerleri StatefulWidget'la yapmak yeterlidir.
      {super.key}); // const GradientConrainer(,{super.key , required this.colors});  Eğer içinde yapacaksak bunu yapmamız gerekir.

  final List<Color> colors;
  
  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        )),
        child: const Center(
          child: ZarAtma(),
        ));
  }
}
