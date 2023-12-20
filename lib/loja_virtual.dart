import 'package:flutter/material.dart';
import 'package:sampa/widget/mobile_app_bar.dart';
import 'package:sampa/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({super.key});

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      var largura = constraint.maxWidth;
      var altura = constraint.maxHeight;
      var alturaBar = AppBar().preferredSize.height;

      return Scaffold(
        appBar: largura < 600
            ? PreferredSize(preferredSize: Size(largura, alturaBar), child: MobileAppBar())
            : PreferredSize(preferredSize: Size(largura, alturaBar), child: WebAppBar()),
      );
    });
  }
}
