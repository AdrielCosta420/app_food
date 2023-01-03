import 'package:flutter/material.dart';

import '../../constants/color_constans.dart';

class ReportarErroPage extends StatefulWidget {
  const ReportarErroPage({Key? key}) : super(key: key);

  @override
  State<ReportarErroPage> createState() => _ReportarErroPageState();
}

class _ReportarErroPageState extends State<ReportarErroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 10),
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: colorGreen,
          ),
        ),
        title: const Text(
          'Reportar erro',
          style: TextStyle(
            color: colorGreen,
          ),
        ),
      ),
      body: Column(
        children: [
          
        ],
      )
    );
  }
}
