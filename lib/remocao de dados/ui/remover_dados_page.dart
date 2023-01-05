import 'package:burguer_app/constants/color_constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RemoverDadosPage extends StatefulWidget {
  const RemoverDadosPage({Key? key}) : super(key: key);

  @override
  State<RemoverDadosPage> createState() => _RemoverDadosPageState();
}

class _RemoverDadosPageState extends State<RemoverDadosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Modular.to.pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: colorGreen,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: const [
                  Text(
                    'DESEJA REQUISITAR A REMOÇÃO\nDOS SEUS DADOS?',
                    style: TextStyle(
                      color: colorGreen,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                height: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color.fromARGB(255, 248, 247, 247),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.question_mark_rounded,
                        color: Colors.red,
                        size: 40,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Text(
                        'Após a remoção dos dados, não será possível recuperá-los. Deseja removê-los?',
                        style: TextStyle(
                          fontSize: 15.8,
                          color: colorGreen,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 7,
                backgroundColor: Colors.green,
                fixedSize: const Size(
                  320,
                  50,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'CONFIRMAR',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 7,
                backgroundColor: Colors.red,
                fixedSize: const Size(320, 50),
              ),
              onPressed: () {},
              child: const Text(
                'CANCELAR',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
