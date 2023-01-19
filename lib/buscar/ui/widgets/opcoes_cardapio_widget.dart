import 'package:burguer_app/buscar/ui/mock/cardapio.dart';
import 'package:burguer_app/buscar/ui/teste_opcao_cardapio_page.dart';
import 'package:burguer_app/constants/color_constans.dart';
import 'package:flutter/material.dart';

class OpcoesCardapioWidget extends StatelessWidget {
  final Cardapio cardapio;

  const OpcoesCardapioWidget({Key? key, required this.cardapio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: ((context) => const TesteOpcaoCardapioPage()))),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[100],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            width: 170,
                            decoration: BoxDecoration(
                              //   color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(cardapio.image),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                cardapio.title,
                                style: const TextStyle(
                                  color: colorGreen,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                'Ate onde vai isso aqui?\nParece bom, entao vamos\ncontinuar mais um pouco\npra ver ate onde suporta\nde fato, e é isso',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),

                              //Text(cardapio.description),
                              Text(cardapio.price)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
