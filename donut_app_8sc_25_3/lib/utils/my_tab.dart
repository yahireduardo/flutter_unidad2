import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String label;

  const MyTab({
    super.key,
    required this.iconPath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 95,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // chip del icono SIN sombrasy con gris MUY suave
          Container(
            width: 55,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFF6F6F6), // gris clarito del mockup
              borderRadius: BorderRadius.circular(18),
            ),
            child: Image.asset(
              iconPath,
              height: 32,
              // opcional: gris medio como el mockup
              color: const Color(0xFF8D8D8D),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(fontSize: 14),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
