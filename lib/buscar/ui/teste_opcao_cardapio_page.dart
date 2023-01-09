import 'package:burguer_app/constants/color_constans.dart';
import 'package:flutter/material.dart';

class TesteOpcaoCardapioPage extends StatefulWidget {
  const TesteOpcaoCardapioPage({Key? key}) : super(key: key);

  @override
  State<TesteOpcaoCardapioPage> createState() => _TesteOpcaoCardapioPageState();
}

class _TesteOpcaoCardapioPageState extends State<TesteOpcaoCardapioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: colorGreen,
          ),
        ),
        title: const Text(
          'Spaghetti de Pupunha',
          style: TextStyle(color: colorGreen),
        ),
      ),
      body: Container(),
    );
  }
}
