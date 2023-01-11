import 'package:burguer_app/constants/color_constans.dart';
import 'package:flutter/material.dart';

class Teste1PageViewPage extends StatefulWidget {
  const Teste1PageViewPage({Key? key}) : super(key: key);

  @override
  State<Teste1PageViewPage> createState() => _Teste1PageViewPageState();
}

class _Teste1PageViewPageState extends State<Teste1PageViewPage> {
  List<String> list = ['Débito/Crédito', 'Pix', 'Dinheiro'];
  String? dropDownValue;
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.solid,
                    offset: Offset(0.8, 0.8),
                    blurRadius: 1.5,
                    spreadRadius: 0.2,
                    color: Colors.grey,
                  ),
                ],
                color: Color.fromARGB(255, 243, 240, 240),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    color: colorGreen,
                    size: 32,
                  ),
                  Text(
                    'Rua Professora Maria Clara 206 - Floresta, Fortaleza.',
                    style: TextStyle(
                      color: colorGreen,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Adicionar Campo',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 1.2,
                          color: colorGreen,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.solid,
                    offset: Offset(1.5, 1.5),
                    blurRadius: 1,
                    spreadRadius: 0.1,
                    color: Colors.grey,
                  )
                ],
                color: Color.fromARGB(255, 243, 240, 240),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ITENS',
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 0.1,
                        color: colorGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Spaghetti de Pupunha 400g (2 pessoas)',
                            style: TextStyle(
                              color: colorGreen,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'R\$84.99',
                            style: TextStyle(
                              color: colorGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 3,
                          child: Text(
                            '1x embalagem',
                            style: TextStyle(
                                color: colorGreen, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'R\$44.99',
                            style: TextStyle(
                              color: colorGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 3,
                          child: Text(
                            '1x talher',
                            style: TextStyle(
                                color: colorGreen, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'R\$4.99',
                            style: TextStyle(
                              color: colorGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Adicionar mais itens',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationThickness: 1.2,
                      fontSize: 15,
                      color: colorGreen,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.solid,
                    offset: Offset(1.5, 1.5),
                    blurRadius: 1,
                    spreadRadius: 0.1,
                    color: Colors.grey,
                  )
                ],
                color: Color.fromARGB(255, 243, 240, 240),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Subtotal',
                            style: TextStyle(
                              fontSize: 16,
                              color: colorGreen,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'R\$ 92.90',
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 0.7,
                              color: colorGreen,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Desconto',
                            style: TextStyle(
                              color: colorGreen,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'R\$ 00.00',
                            style: TextStyle(
                              color: colorGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Gorjeta',
                            style: TextStyle(
                              color: colorGreen,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'R\$ 2.00',
                            style: TextStyle(
                              color: colorGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Entrega',
                            style: TextStyle(
                              color: colorGreen,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'R\$ 12.99',
                            style: TextStyle(
                              color: colorGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Total',
                            style: TextStyle(
                              color: colorGreen,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'R\$ 106.99',
                            style: TextStyle(
                              color: colorGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 170,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 240),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'PAGAMENTO',
                      style: TextStyle(
                        color: colorGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const Divider(),
                    Expanded(
                      child: RadioListTile(
                        activeColor: colorGreen,
                        title: const Text(
                          'Débito/Crédito',
                          style: TextStyle(
                            color: colorGreen,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        value: 1,
                        groupValue: groupValue,
                        onChanged: (int? value) {
                          setState(() {
                            groupValue = value ?? 0;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        activeColor: colorGreen,
                        title: const Text(
                          'Pix',
                          style: TextStyle(
                            color: colorGreen,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        value: 2,
                        groupValue: groupValue,
                        onChanged: (int? value) {
                          setState(() {
                            groupValue = value ?? 0;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        activeColor: colorGreen,
                        title: const Text(
                          'Dinheiro',
                          style: TextStyle(
                            color: colorGreen,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        value: 3,
                        groupValue: groupValue,
                        onChanged: (int? value) {
                          setState(() {
                            groupValue = value ?? 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

////////////
/*

 DropdownButton<String>(
            value: dropDownValue,
            elevation: 10,
            hint: const Text(
              'Forma de pagamento',
              style: TextStyle(
                color: colorGreen,
              ),
            ),
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                child: Text(value),
              );
            }).toList(),
            icon: const Icon(Icons.arrow_downward),
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (value) {
              dropDownValue = value ?? '';
            },
          ) */
