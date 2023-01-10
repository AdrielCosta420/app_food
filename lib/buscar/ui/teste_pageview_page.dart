import 'package:burguer_app/buscar/ui/sliver_test_page.dart';
import 'package:burguer_app/buscar/ui/teste_1_page_view_page.dart';
import 'package:burguer_app/buscar/ui/teste_2_page_view_page.dart';
import 'package:burguer_app/constants/color_constans.dart';
import 'package:flutter/material.dart';

class TestePageviewPage extends StatelessWidget {
  const TestePageviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Endereço',
          style: TextStyle(color: colorGreen),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: colorGreen,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text('Entrega'),
              )),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text('Retirada'),
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: GestureDetector(
                child: PageView(
                  children: const [
                    Teste1PageViewPage(),
                    Teste2PageViewPage(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
