import 'package:flutter/material.dart';
export 'lista.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mensagem'),
          backgroundColor: Colors.greenAccent,
          actions: [
            IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () => {
                  Navigator.pushReplacementNamed(context, '/')
                }),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Colors.greenAccent,
          onPressed: () => {
            Navigator.pushNamed(context, '/cadastro')
          },
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (ctx, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text("Pessoa ${index + 1}"),
              subtitle: Text("Mensagem $index"),
              trailing: const Text("9 XXXX-XXXX"),
            );
          },
        ));
  }
}
