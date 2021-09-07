import 'package:flutter/material.dart';

class ShadowImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            blurRadius: 25.0, // Gölgeyi yumuşatma
            spreadRadius: 0.0, // gölgeyi yumuşatma
            offset: Offset(
              0.0, // horizontal, sağa itme
              8.0, // vertical, aşağı indirme
            ),
          ),
        ],
      ),
    );
  }
}
