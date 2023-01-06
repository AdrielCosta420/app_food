import 'package:burguer_app/buscar/ui/mock/categorias.dart';
import 'package:burguer_app/buscar/ui/mock/categorias_map.dart';
import 'package:burguer_app/buscar/ui/widgets/opcoes_categorias_widget.dart';
import 'package:burguer_app/constants/color_constans.dart';
import 'package:flutter/material.dart';

class BuscarPage extends StatefulWidget {
  const BuscarPage({Key? key}) : super(key: key);

  @override
  State<BuscarPage> createState() => _BuscarPageState();
}

class _BuscarPageState extends State<BuscarPage> {
  late List<Categorias> listCategorias;
  @override
  void initState() {
    super.initState();
    buscarMock();
  }

  void buscarMock() {
    var map = listaCategoriasMapMock.map((e) => Categorias.fromMap(e)).toList();
    listCategorias = map;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70),
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
                  separatorBuilder: (context, index) => const VerticalDivider(),
                  itemCount: listCategorias.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      OpcoesCategoriasWidget(categorias: listCategorias[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
