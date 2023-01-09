// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:burguer_app/buscar/ui/widgets/opcoes_cardapio_widget.dart';
import 'package:flutter/material.dart';

import 'package:burguer_app/buscar/ui/mock/cardapio.dart';
import 'package:burguer_app/buscar/ui/mock/cardapio_map.dart';
import 'package:burguer_app/buscar/ui/mock/categorias.dart';
import 'package:burguer_app/buscar/ui/mock/categorias_map.dart';
import 'package:burguer_app/buscar/ui/widgets/opcoes_categorias_widget.dart';
import 'package:burguer_app/constants/color_constans.dart';

class BuscarPage extends StatefulWidget {
  const BuscarPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BuscarPage> createState() => _BuscarPageState();
}

class _BuscarPageState extends State<BuscarPage> {
  late List<Categorias> listCategorias;
  late List<Cardapio> listCardapio;

  @override
  void initState() {
    super.initState();
    buscarMock();
    buscarCardapioMock();
  }

  void buscarMock() {
    var map = listaCategoriasMapMock.map((e) => Categorias.fromMap(e)).toList();
    listCategorias = map;
  }

  void buscarCardapioMock() {
    var list = listaCardapioMapMock.map((e) => Cardapio.fromMap(e)).toList();
    listCardapio = list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 70,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 90,
                      width: 50,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: colorGreen,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 30,
                ),
                child: SizedBox(
                  height: 150,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const VerticalDivider(
                      thickness: 0.9,
                      endIndent: 50,
                    ),
                    itemCount: listCategorias.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => OpcoesCategoriasWidget(
                        categorias: listCategorias[index]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.5, right: 14.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.dangerous_outlined,
                            color: Colors.red,
                            size: 32,
                          ),
                          Text(
                            'Zero Lactose',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.dangerous_outlined,
                            color: Colors.blue,
                            size: 32,
                          ),
                          Text(
                            'Zero Gluten',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.egg_sharp,
                            color: colorGreen,
                            size: 32,
                          ),
                          Text(
                            'Contém Ovos',
                            style: TextStyle(
                              color: colorGreen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListView.separated(
                separatorBuilder: (context, index) => const VerticalDivider(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: listCardapio.length,
                itemBuilder: (context, index) =>
                    OpcoesCardapioWidget(cardapio: listCardapio[index]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
