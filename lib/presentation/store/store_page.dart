import 'package:cached_network_image/cached_network_image.dart';
import 'package:conectacampo/application/stores/my_stores/my_stores_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/store/business_store/setup_business_store_page.dart';
import 'package:conectacampo/presentation/store/personal_store/setup_personal_store_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

final perfis = ["Gerente", "Vendedor", "Conferente"];
final nomes = ["Perboni", "Frutas & CIA", "Hortifruti A+"];
final especialidades = ["Frutas Importadas", "Hortaliças", "Legumes"];
final urls = [
  "https://www.nossagoma.com.br/images/perboni.png",
  "https://iguatemi.com.br/brasilia/sites/brasilia/files/2020-10/OBA%20PNG.png",
  "https://cdn.neemo.com.br/uploads/settings_franquia/logo/1307/iTunesArtwork.jpg"
];

class StoreMainPage extends StatelessWidget {
  const StoreMainPage(this.globalKey);

  final GlobalKey globalKey;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: globalKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return BlocConsumer<MyStoresBloc, MyStoresState>(
              listener: (context, state) {
                if (state.loading) {
                  EasyLoading.show(status: 'Carregando suas lojas');
                } else {
                  EasyLoading.dismiss();
                }

                state.myStoresSuccessOrFailure?.fold(
                  (l) => l.map(unauthorized: (value) {}),
                  (r) => null,
                );
              },
              builder: (context, state) {
                final personalStore = state.myStoresSuccessOrFailure
                    ?.fold((l) => null, (r) => r.personalStore);

                final businessStore = state.myStoresSuccessOrFailure
                    ?.fold((l) => null, (r) => r.businessStore);

                return Scaffold(
                  backgroundColor: Colors.white,
                  body: ListView(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Suas Lojas",
                          style: TextStyle(
                            color: ColorSet.green1,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.business),
                        title: const Text(
                          "Configurar sua loja empresarial (CNPJ)",
                        ),
                        subtitle: Text(
                          businessStore?.name ?? 'Ainda não configurada',
                        ),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SetupBusinessStorePage(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.add_business_outlined),
                        title: const Text("Configurar sua loja pessoal (CPF)"),
                        subtitle: Text(
                          personalStore?.name ?? 'Ainda não configurada',
                        ),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  SetupPersonalStorePage(personalStore),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Lojas Parceiras",
                          style: TextStyle(
                              color: ColorSet.green1,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => LojaPerfil(index),
                        itemCount: 3,
                      )
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

class LojaPerfil extends StatelessWidget {
  const LojaPerfil(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        child: CachedNetworkImage(
          imageUrl: urls[index],
          width: 70,
          height: 70,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      title: Text(nomes[index]),
      subtitle: Text('Sua função: ${perfis[index]}'),
      trailing: Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}
