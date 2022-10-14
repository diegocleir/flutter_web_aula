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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Banners"),
                  Expanded(
                      child: GridView.count(
                        crossAxisCount: 4,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        children: [
                          ItemProduto(id: 1, descricao: "Notebook Acer", preco: "2.500,00", imagem: "p1.jpg"),
                          ItemProduto(id: 2, descricao: "Pneu Pirele", preco: "1.000,00", imagem: "p2.jpg"),
                          ItemProduto(id: 3, descricao: "Galaxy S9", preco: "4.600,00", imagem: "p3.jpg"),
                          ItemProduto(id: 4, descricao: "iPhone10", preco: "6.500,00", imagem: "p4.jpg"),
                        ],
                      )
                  ),
                  Expanded(
                      child: GridView.count(
                        crossAxisCount: _larguraVisualizacao(largura),
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        children: [
                          ItemProduto(id: 1, descricao: "Notebook Acer", preco: "2.500,00", imagem: "p1.jpg"),
                          ItemProduto(id: 2, descricao: "Pneu Pirele", preco: "1.000,00", imagem: "p2.jpg"),
                          ItemProduto(id: 3, descricao: "Galaxy S9", preco: "4.600,00", imagem: "p3.jpg"),
                          ItemProduto(id: 4, descricao: "iPhone 10", preco: "6.500,00", imagem: "p4.jpg"),
                          ItemProduto(id: 5, descricao: "Xiaomi", preco: "1.300,00", imagem: "p5.jpg"),
                          ItemProduto(id: 6, descricao: "iPhone 12", preco: "8.700,00", imagem: "p6.jpg"),
                          ItemProduto(id: 1, descricao: "Notebook Acer", preco: "2.500,00", imagem: "p1.jpg"),
                          ItemProduto(id: 2, descricao: "Pneu Pirele", preco: "1.000,00", imagem: "p2.jpg"),
                          ItemProduto(id: 3, descricao: "Galaxy S9", preco: "4.600,00", imagem: "p3.jpg"),
                          ItemProduto(id: 4, descricao: "iPhone 10", preco: "6.500,00", imagem: "p4.jpg"),
                          ItemProduto(id: 5, descricao: "Xiaomi", preco: "1.300,00", imagem: "p5.jpg"),
                          ItemProduto(id: 6, descricao: "iPhone 12", preco: "8.700,00", imagem: "p6.jpg"),
                          ItemProduto(id: 1, descricao: "Notebook Acer", preco: "2.500,00", imagem: "p1.jpg"),
                          ItemProduto(id: 2, descricao: "Pneu Pirele", preco: "1.000,00", imagem: "p2.jpg"),
                          ItemProduto(id: 3, descricao: "Galaxy S9", preco: "4.600,00", imagem: "p3.jpg"),
                          ItemProduto(id: 4, descricao: "iPhone 10", preco: "6.500,00", imagem: "p4.jpg"),
                          ItemProduto(id: 5, descricao: "Xiaomi", preco: "1.300,00", imagem: "p5.jpg"),
                          ItemProduto(id: 6, descricao: "iPhone 12", preco: "8.700,00", imagem: "p6.jpg"),
                        ],
                      )
                  )
                ],
              ),
            )
          );
        }
    );
  }
}
