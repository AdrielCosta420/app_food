// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:burguer_app/home/widgets/container_custom_widget.dart';

class PerfilPage extends StatefulWidget {
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
      backgroundColor: Colors.white,
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
                Text('Adriel Costa'),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Editar'),
          ),
          ContainerCustomWidget(
            title: 'Notificações',
            icon: Icons.add_alert_outlined,
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          //ContainerCustomWidget(title: title, icon: icon),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                var listaW = list
                    .map((e) => Column(
                          children: [
                            ContainerCustomWidget(title: e.title, icon: e.icon),
                            const Divider(
                              color: Colors.black,
                              height: 3,
                            )
                          ],
                        ))
                    .toList();
                return listaW[index];
              },
            ),
          )
        ],
      ),
    );
  }

  List<OpcoesContainerCustom> list = [
    OpcoesContainerCustom(title: "Termos", icon: Icons.access_time),
    OpcoesContainerCustom(title: "Termos", icon: Icons.access_time),
    OpcoesContainerCustom(title: "Termos", icon: Icons.access_time),
    OpcoesContainerCustom(title: "Termos", icon: Icons.access_time),
  ];
}

class OpcoesContainerCustom {
  String title;
  IconData icon;
  OpcoesContainerCustom({
    required this.title,
    required this.icon,
  });
}
