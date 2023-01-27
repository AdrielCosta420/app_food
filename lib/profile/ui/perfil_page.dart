// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:burguer_app/buscar/ui/sliver_test_page.dart';
import 'package:burguer_app/buscar/ui/teste_pageview_page.dart';
import 'package:flutter/material.dart';

import 'package:burguer_app/home/widgets/container_custom_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PerfilPage extends StatefulWidget {
  final int currentPage = 0;

  const PerfilPage({Key? key}) : super(key: key);

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(244, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 35,
          ),
          Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: ClipOval(
                child: SizedBox.fromSize(
                    size: const Size.fromRadius(70), // Image radius
                    child: Image.asset('assets/images/file.png')),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Adriel Costa',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Editar',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ContainerCustomWidget(
              title: 'Reservas',
              icon: Icons.my_library_books_outlined,
              ontap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SliverTestPage(),
                  ))

              //Modular.to.pushNamed('/reserva/'),
              ),
          const SizedBox(height: 25),
          ContainerCustomWidget(
            ontap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const TestePageviewPage(),
            )),
            title: 'Notificações',
            icon: Icons.add_alert_outlined,
            trailing: Switch(
              activeColor: Colors.white10,
              activeTrackColor: Colors.green,
              value: true,
              onChanged: (value) {},
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                var listaW = list
                    .map(
                      (e) => Column(
                        children: [
                          ContainerCustomWidget(
                              title: e.title, icon: e.icon, ontap: e.ontap),
                          const Divider(
                            color: Colors.grey,
                            height: 5,
                          ),
                        ],
                      ),
                    )
                    .toList();
                return listaW[index];
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: ContainerCustomWidget(
              title: 'Sair',
              icon: Icons.logout,
              ontap: () => Modular.to.pushNamed('/login/'),
            ),
          ),
         // ElevatedButton(onPressed: onPressed, child: child)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (value) {
          if (value == 0) {
            Modular.to.pushNamed('/delivery/');
          }
          if (value == 1) {
            Modular.to.pushNamed('/buscar/');
          }
          if (value == 2) {
            Modular.to.pushNamed('/perfil/');
          }
        },
        elevation: 0,
        fixedColor: Colors.black,
        backgroundColor: const Color.fromARGB(159, 250, 247, 247),
        items: const [
          BottomNavigationBarItem(
            label: 'Delivery',
            icon: Icon(
              Icons.home_filled,
              size: 27,
              color: Color.fromARGB(255, 23, 85, 25),
            ),
          ),
          BottomNavigationBarItem(
            /* activeIcon: Icon(
              Icons.search,
              size: 27,
              color: Color.fromARGB(255, 23, 85, 25),
            )*/
            label: 'Buscar',
            icon: Icon(
              Icons.search,
              size: 27,
              color: Color.fromARGB(255, 23, 85, 25),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Perfil',
            icon: Icon(
              Icons.person_pin,
              size: 27,
              color: Color.fromARGB(255, 23, 85, 25),
            ),
          ),
        ],
      ),
    );
  }

  List<OpcoesContainerCustom> list = [
    OpcoesContainerCustom(
        title: "Termos e condições de uso", icon: Icons.view_list_rounded),
    OpcoesContainerCustom(
      title: "Solicitar remoção de dados",
      icon: Icons.disabled_by_default_rounded,
      ontap: () => Modular.to.pushNamed('/remocao/'),
    ),
    OpcoesContainerCustom(
        title: "Sobre o aplicativo", icon: Icons.account_tree_outlined),
    OpcoesContainerCustom(
        title: "Limpar Histórico de uso", icon: Icons.text_snippet_outlined),
    OpcoesContainerCustom(
      title: "Reportar erro",
      icon: Icons.error_outline_sharp,
      ontap: () => Modular.to.pushNamed('/report/'),
    ),
  ];
}

class OpcoesContainerCustom {
  String title;
  IconData icon;
  final void Function()? ontap;
  OpcoesContainerCustom({
    required this.title,
    required this.icon,
    this.ontap,
  });
}
