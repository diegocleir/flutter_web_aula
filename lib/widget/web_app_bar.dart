import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          GestureDetector(
            child: Image.asset(
              "imagens/logo.png",
              fit: BoxFit.contain,
            ),
            onTap: (){
              Navigator.of(context).popAndPushNamed("/");
            },
          ),
          Expanded(child: Container()),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart_rounded)
          ),
          SizedBox(width: 10,),
          TextButton(
              onPressed: (){},
              child: Text("Cadastrar"),
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => Colors.lightBlueAccent),
              foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
            ),
          ),
          SizedBox(width: 10,),
          TextButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("Clicou em entrar!")
                    )
                );
              },
              child: Text("Entrar"),
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => Colors.orange),
                foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
              ),
          ),
        ],
      ),
    );
  }
}

