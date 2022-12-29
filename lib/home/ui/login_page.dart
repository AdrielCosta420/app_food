import 'package:flutter/material.dart';
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
      appBar: AppBar(toolbarHeight: 0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Image.asset('assets/images/logo.png'),
            ),
            Text(
              'LOGIN',
              style: GoogleFonts.notoSansWarangCiti(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 45, right: 45, bottom: 20, top: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Center(
                      child: Text(
                    'USUÁRIO',
                    style: GoogleFonts.notoSansWarangCiti(fontSize: 20),
                  )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 45, right: 45, bottom: 20, top: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Center(
                    child: Text(
                      'SENHA',
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.notoSansWarangCiti(fontSize: 20),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
              onPressed: () {},
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
