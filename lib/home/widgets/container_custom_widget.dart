// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ContainerCustomWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? trailing;
  final void Function()? ontap;

  const ContainerCustomWidget({
    Key? key,
    required this.title,
    required this.icon,
    this.trailing,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap ?? () {},
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Color.fromARGB(248, 243, 239, 239),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Icon(icon),
                  Text(title),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: trailing ?? Container(),
            ),
          ],
        ),
      ),
    );
  }
}
