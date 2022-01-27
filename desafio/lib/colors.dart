import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cores {
//light mode
  static Color roxoClaro = Color(0xFF4B1CA2);
  static Color roxoEscuro = Color(0xFF210457);
  static Color corDosValores = Color(0xFF4F426F);
  static Color corDeFundo = Color(0xFFE6E6E6);
  static Color corDoCard = Color(0xFFD7D3E2);
  static Color corDoIcon = Color(0xFF4E406E);
  static Color corIconNav = Color(0xFF4E406E);
  static Color actionBotton = Color(0xFF4B1CA2);

  static void mudaCor(bool mudaCor) {
    if (mudaCor) {
      roxoClaro = Colors.purple.shade50;
      roxoEscuro = Colors.grey.shade50;
      corDosValores = Color(0xFF4F426F);
      corDeFundo = Color(0XFF101010);
      corDoCard = Color(0xFF210457);
      corDoIcon = Color(0xFF4E406E);
      corIconNav = Colors.grey.shade50;
      // actionBotton = Color(0xFF4F426F);
    } else {
      roxoClaro = Color(0xFF4B1CA2);
      roxoEscuro = Color(0xFF210457);
      corDosValores = Color(0xFF4F426F);
      corDeFundo = Color(0xFFE6E6E6);
      corDoCard = Color(0xFFD7D3E2);
      corDoIcon = Color(0xFF4E406E);
      corIconNav = Color(0xFF210457);
      // actionBotton = Color(0xFF4F426F);
    }
  }
}
