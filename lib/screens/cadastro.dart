import 'package:flutter/material.dart';
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Novo Contato'),
          backgroundColor: Colors.greenAccent,
          actions: [
            TextButton(
              child: const Text('SALVAR', style: TextStyle(color: Colors.white)),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        body: Column(
          children: [
            const TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(border: UnderlineInputBorder(), label: Text("Nome")),
            ),
            const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(border: UnderlineInputBorder(), label: Text("Numero Telefone")),
            ),
          ],
        ));
  }
}