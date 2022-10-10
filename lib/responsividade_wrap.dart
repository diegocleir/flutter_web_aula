import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatefulWidget {
  const ResponsividadeWrap({Key? key}) : super(key: key);

  @override
  State<ResponsividadeWrap> createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {
  @override
  Widget build(BuildContext context) {

    double altura = 100;
    double largura = 350;

    return Scaffold(
      appBar: AppBar(title: Text("Wrap"),),
      body: Container(
        color: Colors.black26,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.start,
            spacing: 10,
            runSpacing: 10,
            children: [
              Container(
                width: largura,
                height: altura,
                color: Colors.orange,
              ),
              Container(
                width: largura,
                height: altura,
                color: Colors.green,
              ),
              Container(
                width: largura,
                height: altura,
                color: Colors.purple,
              ),
              Container(
                width: largura,
                height: altura,
                color: Colors.black,
              ),
              Container(
                width: largura,
                height: altura,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
