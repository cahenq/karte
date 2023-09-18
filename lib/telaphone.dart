import 'package:flutter/material.dart';

class TelaPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato'),
      ),
      body: Center(
        child: Text('Esta é a tela de entrar em contato.'),
      ),
    );
  }
}