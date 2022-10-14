import 'package:flutter/material.dart';
import 'package:flutter_web_aula/widget/mobile_app_bar.dart';
import 'package:flutter_web_aula/widget/web_app_bar.dart';
import 'package:get/get.dart';

class DetalhesProduto extends StatefulWidget {
  const DetalhesProduto({Key? key}) : super(key: key);

  @override
  State<DetalhesProduto> createState() => _DetalhesProdutoState();
}

class _DetalhesProdutoState extends State<DetalhesProduto> {

  _larguraVisualizacao(double larguraTela){

    int colunas = 2;
    if( larguraTela <= 600 ){
      colunas = 2;
    } else if( larguraTela <= 960 ){
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {

    //final args = ModalRoute.of(context)!.settings.arguments as Map;

    //print(Get.parameters['id']);

    return LayoutBuilder(
        builder: (context, constraint) {
          var largura = constraint.maxWidth;
          var alturaBarra = AppBar().preferredSize.height;

          return Scaffold(
              appBar: largura < 600
                  ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(largura, alturaBarra)
              )
                  : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(largura, alturaBarra)
              ),
              body: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image.asset(
                              "imagens/p1.jpg",
                              fit: BoxFit.contain,
                            )
                        ),
                        Expanded(
                          flex: 2,
                          child: Text("Produto 1"),
                        )
                      ],
                    )
                  ],
                ),
              )
          );
        }
    );
  }
}
