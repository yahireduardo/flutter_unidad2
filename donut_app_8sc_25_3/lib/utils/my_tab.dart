import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool selected; // <- para dibujar el borde solo al icono

  const MyTab({
    super.key,
    required this.iconPath,
    required this.label,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 95,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // “chip” del icono
          Container(
            width: 55,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFF6F6F6),   // gris clarito
              borderRadius: BorderRadius.circular(18),
              border: selected
                  ? Border.all(color: Colors.black, width: 1) // <- solo icono
                  : null,
            ),
            child: Image.asset(
              iconPath,
              height: 32,
              color: const Color(0xFF8D8D8D),
            ),
          ),
          const SizedBox(height: 10),
          // No fijamos color para que herede de TabBar (gris/negro)
          const SizedBox(height: 0),
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
