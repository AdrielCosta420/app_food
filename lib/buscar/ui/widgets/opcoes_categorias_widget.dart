import 'package:burguer_app/buscar/ui/mock/categorias.dart';
import 'package:burguer_app/constants/color_constans.dart';
import 'package:flutter/material.dart';

class OpcoesCategoriasWidget extends StatelessWidget {
  final Categorias categorias;

  const OpcoesCategoriasWidget({Key? key, required this.categorias})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 150,
          /* ClipRRect(
                        //  borderRadius: BorderRadius.circular(10),
                        child: SizedBox.fromSize(
                          size: const Size.fromWidth(100), // Image radius
                          child: Image.asset('assets/foods/food3.png'),
                        ),
                      ),*/

          decoration: BoxDecoration(
            //   color: Colors.red,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(categorias.image),
            ),
          ),
        ),
        Text(
          categorias.title,
          style: const TextStyle(
            color: colorGreen,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
