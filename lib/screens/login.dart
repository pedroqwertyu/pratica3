import 'package:flutter/material.dart';
export 'login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.whatsapp, size: 72, color: Colors.greenAccent),
            const Text(
              'Whatzap 2',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child:
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Email')),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: const TextField(decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Senha')), obscureText: true),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                  ),
                  onPressed: () => {
                    Navigator.pushReplacementNamed(context, '/lista')
                  },
                  child: const Text('ENTRAR')),
            ),
          ],
        ));
  }
}
