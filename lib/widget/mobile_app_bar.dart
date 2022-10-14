import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GestureDetector(
        child: Image.asset(
          "imagens/logo.png",
          fit: BoxFit.contain,
        ),
        onTap: (){
          Navigator.of(context).popAndPushNamed("/");
        },
      ),
      actions: [
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.search)
        ),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.shopping_cart_rounded)
        ),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert)
        ),
      ],
    );
  }
}
