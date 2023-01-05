import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../../constants/color_constans.dart';

class ReportarErroPage extends StatefulWidget {
  const ReportarErroPage({Key? key}) : super(key: key);

  @override
  State<ReportarErroPage> createState() => _ReportarErroPageState();
}

class _ReportarErroPageState extends State<ReportarErroPage> {
  late GlobalKey<DropdownSearchState<String>> _popupCustomValidationKey;

  @override
  void initState() {
    super.initState();
    _popupCustomValidationKey = GlobalKey<DropdownSearchState<String>>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
                        Icons.error_outline_sharp,
                        color: colorGreen,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Text(
                        'Aqui você pode reportar eventuais erros ocorridos em qualquer parte do aplicativo.',
                        style: TextStyle(
                          color: colorGreen,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: DropdownSearch.multiSelection(
                key: _popupCustomValidationKey,
                popupProps: PopupPropsMultiSelection<String>.dialog(
                  validationWidgetBuilder: (context, selectedItems) {
                    return MaterialButton(
                      color: colorGreen,
                      textColor: Colors.white,
                      child: const Text('OK'),
                      onPressed: () {
                        print(
                            _popupCustomValidationKey.currentState.toString());
                        _popupCustomValidationKey.currentState
                            ?.popupOnValidate();
                      },
                    );
                  },
                  showSearchBox: true,
                  scrollbarProps: const ScrollbarProps(
                    crossAxisMargin: 4,
                    thickness: 10,
                  ),
                  dialogProps: const DialogProps(
                    elevation: 10,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    label: const Text("Escolha uma opção"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: colorGreen,
                      ),
                    ),
                  ),
                ),
                dropdownButtonProps: const DropdownButtonProps(
                  color: colorGreen,
                  alignment: Alignment.centerLeft,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 30,
                  //style: ButtonStyle(backgroundColor: MaterialStateProperty<Color> Colors.red),
                ),
                clearButtonProps: const ClearButtonProps(
                  isVisible: true,
                  color: Colors.red,
                ),
                items: const [
                  'Delivery',
                  'Perfil/Editar',
                  'Perfil',
                  'Sacola/Retirada',
                  'Sacola/Entrega',
                  'Endereço/Retirada',
                  'Sacola',
                  'Endereço/Entrega',
                  'Endereço',
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: TextFormField(
                maxLines: 10,
                minLines: 10,
                decoration: InputDecoration(
                  label: const Text(
                    'Pode nos explicar o que aconteceu?',
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: colorGreen,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: SizedBox(
                height: 50,
                width: 320,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: colorGreen,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Reportar erro',
                    style: TextStyle(
                      fontSize: 20,
                    ),
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
