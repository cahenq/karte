import 'package:flutter/material.dart';
import 'package:karte/telacomunidade.dart';
import 'package:karte/telarecarregue.dart';
import 'package:karte/paginainicial.dart';
import 'package:karte/telaperfil.dart';
import 'package:karte/telaphone.dart';

class TelaInicio extends StatefulWidget {
  @override
  _TelaInicioState createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  int _selectedIndex = 0;
  bool isMenuOpen = false;

  List<Widget> _widgetOptions = <Widget>[
    TelaRecarregue(),
    TelaComunidade(),
    InicialPage(),
    TelaPerfil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(255, 0, 57, 126),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 200.0),
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                Container(
                  width: 200,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 88, 132, 196),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'R\$0,00',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaRecarregue()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 88, 132, 196),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 88, 132, 196),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'RECARREGUE',
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaComunidade()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 88, 132, 196),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 88, 132, 196),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'COMUNIDADE',
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Color.fromARGB(255, 0, 57, 126), // Cor de fundo azul
              padding: EdgeInsets.symmetric(horizontal: 16), // Espaçamento horizontal
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TelaInicio(),
                        ),
                      );
                    },
                    icon: Icon(Icons.home, color: Colors.white), // Ícone branco
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TelaPhone(),
                        ),
                      );
                    },
                    icon: Icon(Icons.phone, color: Colors.white), // Ícone branco
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InicialPage(),
                        ),
                      );
                    },
                    icon: Icon(Icons.logout, color: Colors.white), // Ícone branco
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TelaPerfil(),
                        ),
                      );
                    },
                    icon: Icon(Icons.person, color: Colors.white), // Ícone branco
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
