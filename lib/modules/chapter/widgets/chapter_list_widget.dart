
import 'package:flutter/material.dart';

class ChapterListWidget extends StatelessWidget {
  const ChapterListWidget({
    super.key,
    required this.id,
    required this.haditName,
    required this.range,
  });
  final String id;
  final String haditName;
  final String range;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFF1AA483),
              child: Text(
                id,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  haditName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5D646F),
                  ),
                ),
                Text(
                  range,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0x80353535),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
