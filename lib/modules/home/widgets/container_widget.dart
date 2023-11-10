import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.img,
    required this.title,
  });
  final Image img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        img,
        const SizedBox(
          height: 10,
        ),
        Text(title)
      ],
    );
  }
}