import 'package:flutter/material.dart';

class MobileAppBar extends StatefulWidget {
  const MobileAppBar({super.key});

  @override
  State<MobileAppBar> createState() => _MobileAppBarState();
}

class _MobileAppBarState extends State<MobileAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        "imagens/logo.png",
        fit: BoxFit.contain,
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