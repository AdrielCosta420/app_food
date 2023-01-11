import 'teste_1_page_view_page.dart';
import 'teste_2_page_view_page.dart';
import '../../constants/color_constans.dart';
import 'package:flutter/material.dart';

class TestePageviewPage extends StatefulWidget {
  const TestePageviewPage({Key? key}) : super(key: key);

  @override
  State<TestePageviewPage> createState() => _TestePageviewPageState();
}

class _TestePageviewPageState extends State<TestePageviewPage>
    with SingleTickerProviderStateMixin {
  bool entregaSelect = true;
  bool retiradaSelect = false;
  Color colorTest = Colors.red;
  late TabController tabBarController;

  @override
  void initState() {
    tabBarController = TabController(length: 2, vsync: this);
    super.initState();
  }

  void changePage() {
    setState(() {
      entregaSelect = !entregaSelect;
      retiradaSelect = !retiradaSelect;
    });
  }

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
        bottom: TabBar(
          unselectedLabelColor: Colors.black,
          labelColor: colorGreen,
          indicatorWeight: 2,
          indicatorColor: colorGreen,
          
          controller: tabBarController,
          labelStyle: const TextStyle(color: Colors.black),
          tabs: const [
            Tab(
              text: "Endereço",
              
            ),
            Tab(
              text: "Retirada",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabBarController,
        children: const [
          Teste1PageViewPage(),
          Teste2PageViewPage(),
        ],
      ),
    );
  }
}

/*


Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor:
                          entregaSelect ? Colors.grey : Colors.white,
                    ),
                    onPressed: () {
                      if (!entregaSelect) {
                        changePage();
                      }
                    },
                    child: const Text(
                      'Entrega',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor:
                          retiradaSelect ? Colors.grey : Colors.white,
                    ),
                    onPressed: () {
                      if (!retiradaSelect) {
                        changePage();
                      }
                    },
                    child: const Text(
                      'Retirada',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: GestureDetector(
                child: PageView(
                  controller: controllerPage,
                  children: const [
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      )


*/
