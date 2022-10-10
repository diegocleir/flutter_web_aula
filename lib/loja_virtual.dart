import 'package:flutter/material.dart';
import 'package:flutter_web_aula/widget/item_produto.dart';
import 'package:flutter_web_aula/widget/mobile_app_bar.dart';
import 'package:flutter_web_aula/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {

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
    return LayoutBuilder(
        builder: (context, constraint){

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
              child: GridView.count(
                  crossAxisCount: _larguraVisualizacao(largura),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  ItemProduto(descricao: "Notebook Acer", preco: "2.500,00", imagem: "p1.jpg"),
                  ItemProduto(descricao: "Pneu Pirele", preco: "1.000,00", imagem: "p2.jpg"),
                  ItemProduto(descricao: "Galaxy S9", preco: "4.600,00", imagem: "p3.jpg"),
                  ItemProduto(descricao: "iPhone 10", preco: "6.500,00", imagem: "p4.jpg"),
                  ItemProduto(descricao: "Xiaomi", preco: "1.300,00", imagem: "p5.jpg"),
                  ItemProduto(descricao: "iPhone 12", preco: "8.700,00", imagem: "p6.jpg"),
                  ItemProduto(descricao: "Notebook Acer", preco: "2.500,00", imagem: "p1.jpg"),
                  ItemProduto(descricao: "Pneu Pirele", preco: "1.000,00", imagem: "p2.jpg"),
                  ItemProduto(descricao: "Galaxy S9", preco: "4.600,00", imagem: "p3.jpg"),
                  ItemProduto(descricao: "iPhone 10", preco: "6.500,00", imagem: "p4.jpg"),
                  ItemProduto(descricao: "Xiaomi", preco: "1.300,00", imagem: "p5.jpg"),
                  ItemProduto(descricao: "iPhone 12", preco: "8.700,00", imagem: "p6.jpg"),
                  ItemProduto(descricao: "Notebook Acer", preco: "2.500,00", imagem: "p1.jpg"),
                  ItemProduto(descricao: "Pneu Pirele", preco: "1.000,00", imagem: "p2.jpg"),
                  ItemProduto(descricao: "Galaxy S9", preco: "4.600,00", imagem: "p3.jpg"),
                  ItemProduto(descricao: "iPhone 10", preco: "6.500,00", imagem: "p4.jpg"),
                  ItemProduto(descricao: "Xiaomi", preco: "1.300,00", imagem: "p5.jpg"),
                  ItemProduto(descricao: "iPhone 12", preco: "8.700,00", imagem: "p6.jpg"),
                ],
              ),
            )
          );
        }
    );
  }
}
