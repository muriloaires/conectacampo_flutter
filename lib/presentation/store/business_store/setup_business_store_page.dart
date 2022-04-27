import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class SetupBusinessStorePage extends StatelessWidget {
  const SetupBusinessStorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurar sua Loja Pessoal'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorSet.green1,
        child: Icon(Icons.check),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: ColorSet.green1,
              foregroundColor: Colors.white,
              child: Icon(
                Icons.add_photo_alternate_outlined,
                size: 48,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Insira o nome da sua loja'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Insira seu CNPJ *'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Insira seu endereço de e-mail *'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Seus ajudantes",
                style: TextStyle(
                    color: ColorSet.green1,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('Severino da Silva'),
              subtitle: Text('Administrador'),
              trailing: Icon(Icons.delete_outline),
            ),
            ListTile(
              title: Text('Marlene Pereira'),
              subtitle: Text('Conferente'),
              trailing: Icon(Icons.delete_outline),
            ),
            ListTile(
              title: Text('Pedro Miguel'),
              subtitle: Text('Entregadir'),
              trailing: Icon(Icons.delete_outline),
            ),
            ListTile(
              leading: Icon(Icons.person_add_alt),
              title: Text('Adicionar Ajudante'),
              subtitle: Text('Toque para adicionar'),
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }
}
