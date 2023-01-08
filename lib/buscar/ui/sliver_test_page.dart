import 'package:burguer_app/constants/color_constans.dart';
import 'package:flutter/material.dart';

import 'mock/cardapio.dart';
import 'mock/cardapio_map.dart';
import 'mock/categorias.dart';
import 'mock/categorias_map.dart';
import 'widgets/opcoes_cardapio_widget.dart';
import 'widgets/opcoes_categorias_widget.dart';

class SliverTestPage extends StatefulWidget {
  const SliverTestPage({Key? key}) : super(key: key);

  @override
  State<SliverTestPage> createState() => _SliverTestPageState();
}

class _SliverTestPageState extends State<SliverTestPage> {
  late List<Categorias> listCategorias;
  late List<Cardapio> listCardapio;

  @override
  void initState() {
    buscarMock();
    buscarCardapioMock();
    super.initState();
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
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 20,
          shadowColor: colorGreen,
          centerTitle: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          title: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.biggest.height < 150) {
              return const Text(
                'Cardápio',
                style: TextStyle(color: Colors.white),
              );
            }
            return Container(
              color: Colors.black,
            );
          }),
          automaticallyImplyLeading: true,
          backgroundColor: colorGreen,
          floating: true,
          snap: false,
          pinned: true,
          expandedHeight: 180,
          flexibleSpace: FlexibleSpaceBar(
            // title: Text('Título'),
            background: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              padding: EdgeInsets.only(left: 31.0, right: 25),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                cursorColor: Colors.white,
                                cursorWidth: 1,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white38,
                                    ),
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Colors.white60,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
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
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 30,
                    ),
                    child: SizedBox(
                      height: 150,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            const VerticalDivider(
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
                    separatorBuilder: (context, index) => VerticalDivider(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listCardapio.length,
                    itemBuilder: (context, index) =>
                        OpcoesCardapioWidget(cardapio: listCardapio[index]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
