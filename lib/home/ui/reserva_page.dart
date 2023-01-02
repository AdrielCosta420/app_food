import 'package:flutter/material.dart';

class ReservaPage extends StatefulWidget {
  const ReservaPage({Key? key}) : super(key: key);

  @override
  State<ReservaPage> createState() => _ReservaPageState();
}

const List<String> listData = [
  "02/01",
  '02/02',
  '02/03',
  '02/04',
  '02/05',
  '02/06',
  '02/07',
  '02/08',
];

const List<String> listHoras = [
  "01:00",
  "02:00",
  "03:00",
  "04:00",
  "05:00",
  "06:00",
  "07:00",
  "08:00",
  "09:00",
  "10:00",
  "11:00",
  "12:00",
  "13:00",
  "14:00",
  "15:00",
  "16:00",
  "17:00",
  "18:00",
];

class _ReservaPageState extends State<ReservaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 400,
            child: Image.asset('assets/images/logo.png'),
          ),
          const Text(
            'Reservas',
            style: TextStyle(
              color: Color.fromARGB(255, 23, 85, 25),
              fontSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Data',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 23, 85, 25),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 5,
                          backgroundColor:
                              const Color.fromARGB(248, 243, 239, 239),
                          fixedSize: const Size(200, 50),
                        ),
                        onPressed: () {},
                        child: DropdownButton(
                          isExpanded: true,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromARGB(255, 23, 85, 25),
                          ),
                          items: listData
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 0,
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Horas',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 23, 85, 25),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 5,
                            backgroundColor:
                                const Color.fromARGB(248, 243, 239, 239),
                            fixedSize: const Size(150, 50)),
                        onPressed: () {},
                        child: DropdownButton(
                          isExpanded: true,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromARGB(255, 23, 85, 25),
                          ),
                          items: listHoras
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Unidade',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 23, 85, 25),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 5,
                            backgroundColor:
                                const Color.fromARGB(248, 243, 239, 239),
                            fixedSize: const Size(200, 50)),
                        onPressed: () {},
                        child: DropdownButton(
                          isExpanded: true,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromARGB(255, 23, 85, 25),
                          ),
                          /* hint: const Text(
                            'Unidade',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 23, 85, 25),
                            ),
                          ),*/
                          items: listData
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 0,
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pessoas',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 23, 85, 25),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 5,
                            backgroundColor:
                                const Color.fromARGB(248, 243, 239, 239),
                            fixedSize: const Size(150, 50)),
                        onPressed: () {},
                        child: DropdownButton(

                          isExpanded: true,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromARGB(255, 23, 85, 25),
                          ),
                          items: listHoras
                              .map<DropdownMenuItem<String>>((String value) {
                              
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: const Size(220, 50),
                backgroundColor: const Color.fromARGB(255, 40, 165, 44),
              ),
              onPressed: () {},
              child: const Text(
                'Reservar',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
