import 'package:burguer_app/profile/ui/perfil_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /* appBar: AppBar(
        actions: const [
          Icon(
            Icons.location_on_outlined,
            color: Colors.green,
            size: 35,
          ),
        ],
        shadowColor: Colors.white,
        elevation: 0,
      ),*/
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 0,
        onPressed: () {},
        child: const Icon(
          Icons.location_on_outlined,
          color: Color.fromARGB(255, 8, 218, 15),
          size: 35,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              'LOGIN',
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
                      'Usuário',
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 45, 197, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: const Size(320, 50),
              ),
              onPressed: () => Modular.to.pushNamed('/'),
              child: Center(
                child: Text(
                  'Entrar',
                  style: GoogleFonts.notoSansWarangCiti(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 15),
              child: Row(
                children: const [
                  Expanded(
                      child: Divider(
                    endIndent: 10,
                    indent: 40,
                    color: Colors.black,
                  )),
                  Text(
                    'Faça login com',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                  Expanded(
                    child: Divider(
                      indent: 10,
                      endIndent: 40,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 49,
              width: 320,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.facebook),
                    Text("Facebook"),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 49,
              width: 320,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.apple),
                    Text("Continuar com Apple"),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 320,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Não tem uma conta?'),
                      Text(
                        'Cadastre-se',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Esqueceu sua senha?'),
                      Text(
                        'Redefinir senha',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
