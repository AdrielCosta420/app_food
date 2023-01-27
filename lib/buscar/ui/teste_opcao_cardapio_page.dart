import 'package:burguer_app/buscar/ui/mock/categorias.dart';
import 'package:burguer_app/buscar/ui/teste_1_page_view_page.dart';
import 'package:burguer_app/buscar/ui/teste_pageview_page.dart';
import 'package:burguer_app/buscar/ui/widgets/opcoes_categorias_widget.dart';
import 'package:burguer_app/constants/color_constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'mock/cardapio.dart';
import 'mock/cardapio_map.dart';
import 'mock/categorias_map.dart';

class TesteOpcaoCardapioPage extends StatefulWidget {
  final Cardapio cardapio;

  const TesteOpcaoCardapioPage({
    Key? key,
    required this.cardapio,
  }) : super(key: key);

  @override
  State<TesteOpcaoCardapioPage> createState() => _TesteOpcaoCardapioPageState();
}

class _TesteOpcaoCardapioPageState extends State<TesteOpcaoCardapioPage> {
  //TODO CRIAR MOCK PARA CADA UM DOS PRATOS, CONTENDO FOTOS E DESCRIÇÃO

  late List<Categorias> listCategorias;
  late List<Cardapio> listCardapio;
  int groupValue = 0;
  int _quantity = 1;

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
        title: Text(
          widget.cardapio.title,
          style: const TextStyle(color: colorGreen),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const VerticalDivider(
                    thickness: 0.9,
                    endIndent: 50,
                  ),
                  itemCount: listCategorias.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      OpcoesCategoriasWidget(categorias: listCategorias[index]),
                ),
              ),
            ),
            Text(
              widget.cardapio.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.cardapio.description,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Serve 2 pessoas',
                        style: TextStyle(
                          color: colorGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'A partir de ${widget.cardapio.price}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, color: colorGreen),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: const BoxDecoration(
                color: Color.fromARGB(200, 240, 239, 239),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Embalagem\n1 de 1',
                      style: TextStyle(
                        color: colorGreen,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      width: 85,
                      height: 22,
                      decoration: BoxDecoration(
                          color: colorGreen,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          'Obrigatório',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '+ R\$ 4,00',
                    style: TextStyle(
                      color: colorGreen,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Radio(
                    activeColor: colorGreen,
                    value: 1,
                    groupValue: groupValue,
                    onChanged: (int? value) {
                      setState(() {
                        groupValue = value ?? 0;
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: const BoxDecoration(
                color: Color.fromARGB(200, 240, 239, 239),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Adicionais',
                      style: TextStyle(
                        fontSize: 15,
                        color: colorGreen,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: const Text(
                'Molho Especial             R\$ 4,00',
                style: TextStyle(
                    color: colorGreen,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
              activeColor: colorGreen,
              value: 1,
              groupValue: groupValue,
              onChanged: (int? value) {
                setState(() {
                  groupValue = value ?? 0;
                });
              },
            ),
            RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: const Text(
                'Talher Especial             R\$ 6,00',
                style: TextStyle(
                    color: colorGreen,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
              activeColor: colorGreen,
              value: 2,
              groupValue: groupValue,
              onChanged: (int? value) {
                setState(() {
                  groupValue = value ?? 0;
                });
              },
            ),
            RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: const Text(
                'Azeite Especial             R\$5,00',
                style: TextStyle(
                    color: colorGreen,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
              activeColor: colorGreen,
              value: 3,
              groupValue: groupValue,
              onChanged: (int? value) {
                setState(() {
                  groupValue = value ?? 0;
                });
              },
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: const BoxDecoration(
                color: Color.fromARGB(200, 240, 239, 239),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Escolhe seu prato',
                      style: TextStyle(
                        color: colorGreen,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      width: 85,
                      height: 22,
                      decoration: BoxDecoration(
                          color: colorGreen,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          'Obrigatório',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${widget.cardapio.title} 400g (2 pessoas)\n+ R\$ 54,90',
                    style: const TextStyle(
                        color: colorGreen, fontWeight: FontWeight.w500),
                  ),
                  Radio(
                    value: 4,
                    groupValue: groupValue,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${widget.cardapio.title} 700g (4 pessoas)\n+ R\$ 84,90',
                    style: const TextStyle(
                        color: colorGreen, fontWeight: FontWeight.w500),
                  ),
                  Radio(
                    value: 4,
                    groupValue: groupValue,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 15),
              child: Row(
                children: const [
                  Text(
                    'Alguma observação?',
                    style: TextStyle(
                        fontSize: 20,
                        color: colorGreen,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLines: 2,
                minLines: 2,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: colorGreen,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 12, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: colorGreen,
                      ),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () => setState(() => _quantity--),
                        ),
                        Text(_quantity.toString()),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () => setState(() => _quantity++),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: colorGreen,
                      ),
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => const TestePageviewPage()),
                        ),
                      ),
                      child: const Text('Adicionar   R\$ 84,90'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
