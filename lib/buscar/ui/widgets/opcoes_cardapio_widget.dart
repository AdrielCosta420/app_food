import 'package:burguer_app/buscar/ui/mock/cardapio.dart';
import 'package:burguer_app/constants/color_constans.dart';
import 'package:flutter/material.dart';

class OpcoesCardapioWidget extends StatelessWidget {
  final Cardapio cardapio;

  const OpcoesCardapioWidget({Key? key, required this.cardapio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              //   color: Colors.red,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(cardapio.image),
              ),
            ),
          ),
          Text(
            cardapio.title,
            style: const TextStyle(
              color: colorGreen,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
