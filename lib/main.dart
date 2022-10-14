import 'package:flutter/material.dart';
import 'package:flutter_web_aula/Orientacao.dart';
import 'package:flutter_web_aula/loja_virtual.dart';
import 'package:flutter_web_aula/regras_layout.dart';
import 'package:flutter_web_aula/responsividade_media_query.dart';
import 'package:flutter_web_aula/responsividade_row_col.dart';
import 'package:flutter_web_aula/responsividade_wrap.dart';
import 'package:flutter_web_aula/widget/detalhes_produto.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: "FlutterWeb",
    debugShowCheckedModeBanner: false,
    //home: ResponsividadeMediaQuery()
      //home: ResponsividadeRowCol(),
      //home: ResponsividadeWrap()
    // home: Orientacao(),
    //home: RegrasLayout()
    //home: LojaVirtual(),
    initialRoute: '/',
    routes: {
      '/': (context) => LojaVirtual(),
      '/produto/:id': (context) => DetalhesProduto(),
    },
    //home: LojaVirtual(),
    getPages: [
      GetPage(name: '/', page: () => LojaVirtual()),
      GetPage(name: '/produto/:id', page: () => DetalhesProduto()),
    ],
  ));
}

