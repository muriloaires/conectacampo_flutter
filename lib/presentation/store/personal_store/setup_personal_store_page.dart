import 'package:conectacampo/domain/store/model/personal_store/personal_store.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class SetupPersonalStorePage extends StatelessWidget {
  const SetupPersonalStorePage(this.personalStore);

  final PersonalStore? personalStore;

  @override
  Widget build(BuildContext context) {
    final storeNameTextController =
        TextEditingController(text: 'Loja do Zezim');
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
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Icon(Icons.add_photo_alternate_outlined),
              ),
              title: Text('Loja do Zezim'),
              subtitle: Text('José da Silva Sauro'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Insira seu CPF *'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Insira seu endereço de e-mail *'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                decoration: InputDecoration(
                    hintText:
                        'Como te encontrar (Pedra, placa do veículo etc.) *'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
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
