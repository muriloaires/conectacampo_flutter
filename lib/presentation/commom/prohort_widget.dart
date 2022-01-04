import 'package:conectacampo/infrastructure/places/place_repository.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProhortWidget extends StatelessWidget {
  const ProhortWidget();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {navToProhort();},
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              ColorSet.greenRightGradient,
              ColorSet.greenLeftGradient,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Dúvidas sobre preço?',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                'Acesse o PROHORT ou o SIMA!',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> navToProhort() async {
  final place = await loadSelectedPlace();
  String url = '';
  if (place != null) {
    final lowerCaseState = place.state.toLowerCase();
    switch (lowerCaseState) {
      case 'goiás':
        url = 'https://www.ceasa.go.gov.br/indicadores/cotacoes.html ';
        break;
      case 'distrito federal':
        url = 'https://www.ceasa.df.gov.br/sima/';
        break;
      case 'acre':
        url = '';
        break;
      case 'alagoas':
        url = 'http://www.ideral.al.gov.br/abastecimento/cotacao-de-precos/';
        break;
      case 'amazonas':
        url = '';
        break;
      case 'amapá':
        url = '';
        break;
      case 'bahia':
        url = '';
        break;
      case 'ceará':
        url = 'https://www.ceasa-ce.com.br/boletim-diario-de-precos/';
        break;
      case 'espírito santo':
        url = 'https://ceasa.es.gov.br/';
        break;
      case 'maranhão':
        url = '';
        break;
      case 'minas gerais':
        url = 'http://www.ceasaminas.com.br/informacoesmercadogeral.asp';
        break;
      case 'mato grosso do sul':
        url = 'https://www.ceasa.ms.gov.br/cotacoes-ceasa-ms/';
        break;
      case 'mato grosso':
        url = '';
        break;
      case 'pará':
        url = 'http://www.ceasa.pa.gov.br/cotacao';
        break;
      case 'paraíba':
        url = '';
        break;
      case 'pernambuco':
        url = 'https://www.ceasape.org.br/cotacao';
        break;
      case 'piauí':
        url = 'http://www.ceasa.pi.gov.br/index.php';
        break;
      case 'paraná':
        url = 'https://www.ceasa.pr.gov.br/Pagina/Cotacao-Diaria-de-Precos';
        break;
      case 'rio de janeiro':
        url = 'http://www.ceasa.rj.gov.br/ceasa_portal/view/ListarCotacoes.asp';
        break;
      case 'rio grande do norte':
        url =
            ' http://www.ceasa.rn.gov.br/Conteudo.asp?TRAN=PASTAC&TARG=2485&ACT=&PAGE=0&PARM=&LBL=Cota%E7%E3o+de+Pre%E7os';
        break;
      case 'rondônia':
        url = '';
        break;
      case 'roraima':
        url = '';
        break;
      case 'rio grande do sul':
        if (place.name == 'CEASA/RS') {
          url = 'http://ceasa.rs.gov.br/';
        } else {
          url = 'https://www.ceasaserra.com.br/cotacoes-ceasa-serra/';
        }
        break;
      case 'santa catarina':
        url = 'http://www.ceasa.sc.gov.br/index.php/cotacao-de-precos ';
        break;
      case 'sergipe':
        url = '';
        break;
      case 'são paulo':
        url =
            'https://ceagesp.gov.br/entrepostos/servicos-entrepostagem/cotacoes/';
        break;
      case 'tocantins':
        url = 'https://ceasa.to.gov.br/cotacoes-agropecuarias/';
        break;
    }
    final varCanLaunch = await canLaunch(url);
    if (varCanLaunch) {
      await launch(url);
    }
  }
}
