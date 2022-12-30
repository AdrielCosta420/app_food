import 'package:flutter/material.dart';

class OpcaoPage extends StatefulWidget {
  const OpcaoPage({Key? key}) : super(key: key);

  @override
  State<OpcaoPage> createState() => _OpcaoPageState();
}

class _OpcaoPageState extends State<OpcaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Image.asset('assets/images/logo.png'),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 40),
            child: SizedBox(
              width: 320,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(190, 42, 155, 39),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Cardápio',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 40),
            child: SizedBox(
              width: 320,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(190, 42, 155, 39),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Reservas',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 40),
            child: SizedBox(
              width: 320,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(190, 42, 155, 39),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Instagram',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
