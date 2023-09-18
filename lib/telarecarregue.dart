import 'package:flutter/material.dart';
import 'package:karte/paginainicial.dart';
import 'package:karte/tela_inicio.dart';
import 'package:karte/teladebito.dart';
import 'package:karte/telaperfil.dart';
import 'package:karte/telaphone.dart';
import 'package:karte/telapix.dart';

class TelaRecarregue extends StatefulWidget {
  @override
  _TelaRecarregueState createState() => _TelaRecarregueState();
}

class _TelaRecarregueState extends State<TelaRecarregue> {
  TextEditingController _valorController = TextEditingController();

  void _formatValue() {
    String enteredValue = _valorController.text.replaceAll(',', '.');
    double value = double.parse(enteredValue);

    String formattedValue = 'R\$${value.toStringAsFixed(2)}';

    setState(() {
      _valorController.text = formattedValue;
    });
  }

  void _unfocus() {
    FocusScope.of(context).unfocus();
  }

  void _navigateToTelaPix() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaPix()),
    );
  }

  void _navigateToTelaDebito() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaDebito()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromARGB(255, 0, 57, 126),
      ),
      body: GestureDetector(
        onTap: _unfocus,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Color.fromARGB(255, 0, 57, 126),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 150.0),
                    child: SizedBox(
                      height: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _unfocus();
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
                        child: TextField(
                          controller: _valorController,
                          textAlign: TextAlign.center,
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            hintText: 'R\$0,00',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                          ),
                          onChanged: (value) {},
                          onEditingComplete: () {
                            _formatValue();
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: _navigateToTelaPix,
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
                          'PAGAR COM PIX',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: _navigateToTelaDebito,
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
                          'PAGAR COM DÉBITO',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
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
                color: Color.fromARGB(255, 0, 57, 126),
                padding: EdgeInsets.symmetric(horizontal: 16),
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
                      icon: Icon(Icons.home, color: Colors.white),
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
                      icon: Icon(Icons.phone, color: Colors.white),
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
                      icon: Icon(Icons.logout, color: Colors.white),
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
                      icon: Icon(Icons.person, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
