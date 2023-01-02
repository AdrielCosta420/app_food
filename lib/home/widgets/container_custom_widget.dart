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
        height: 52,
        decoration: const BoxDecoration(
          color: Color.fromARGB(200, 240, 239, 239),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 9),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: const Color.fromARGB(255, 32, 112, 35),
                    ),
                    const SizedBox(
                      width: 10,
                      height: 0,
                    ),
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
      ),
    );
  }
}
