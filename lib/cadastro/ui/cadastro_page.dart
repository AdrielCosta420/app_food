import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Image.asset('assets/images/logo.png'),
            ),
            Text(
              'CADASTRO',
              style: GoogleFonts.notoSansWarangCiti(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 45, right: 45, bottom: 20, top: 20),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(248, 243, 239, 239),
                  label: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Nome',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSansWarangCiti(
                        fontSize: 20,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    gapPadding: 20,
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(115, 158, 158, 158),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(115, 158, 158, 158),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 45, right: 45, bottom: 20, top: 5),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(248, 243, 239, 239),
                  label: Center(
                    child: Text(
                      'Email',
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.notoSansWarangCiti(
                          fontSize: 20, color: Colors.black87),
                    ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    gapPadding: 20,
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(115, 158, 158, 158),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(115, 158, 158, 158),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 45, right: 45, bottom: 20, top: 5),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(248, 243, 239, 239),
                  label: Center(
                    child: Text(
                      'Senha',
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.notoSansWarangCiti(
                          fontSize: 20, color: Colors.black87),
                    ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    gapPadding: 20,
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(115, 158, 158, 158),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(115, 158, 158, 158),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 45, right: 45, bottom: 20, top: 5),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(248, 243, 239, 239),
                  label: Center(
                    child: Text(
                      'Repita sua senha',
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.notoSansWarangCiti(
                          fontSize: 20, color: Colors.black87),
                    ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    gapPadding: 20,
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(115, 158, 158, 158),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(115, 158, 158, 158),
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 45, 197, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: const Size(320, 50),
              ),
              onPressed: () => Modular.to.pushNamed('/perfil/'),
              child: Center(
                child: Text(
                  'Entrar',
                  style: GoogleFonts.notoSansWarangCiti(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
