import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karte/tela_inicio.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 252, 254, 255)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromARGB(255, 0, 57, 126),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 0, 57, 126),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 128,
                height: 128,
                child: Image.asset('assets/logo.png'),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _emailController,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                TextInputFormatter.withFunction(
                  (oldValue, newValue) {
                    if (newValue.text.length == 11) {
                      return TextEditingValue(
                        text: '(${newValue.text.substring(0, 2)}) ${newValue.text.substring(2, 3)} ${newValue.text.substring(3, 7)}-${newValue.text.substring(7, 11)}',
                        selection: TextSelection.collapsed(offset: newValue.text.length),
                      );
                    }
                    return newValue;
                  },
                ),
              ],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'TELEFONE OU E-MAIL',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Courier',
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              inputFormatters: [
                TextInputFormatter.withFunction(
                  (oldValue, newValue) {
                    return TextEditingValue(
                      text: '*' * newValue.text.length,
                      selection: newValue.selection,
                    );
                  },
                ),
              ],
              decoration: InputDecoration(
                labelText: 'SENHA',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Courier',
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  // Lógica para recuperar senha
                },
                child: Text(
                  'Esqueci minha senha',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaInicio()),
                  );
                },
                child: Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                    child: Text(
                      'Confirmar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
