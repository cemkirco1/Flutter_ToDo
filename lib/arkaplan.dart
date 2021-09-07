import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  final Color color;

  GradientBackground({@required this.child, @required this.color});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        // Kutu tasarımı
        gradient: LinearGradient(
          // Renk geçişinin başladığı ve bitti yer
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // renkler için alan belirleyin
            stops: [0.3, 0.5, 0.7, 0.9],
            colors: getColorList(color)
        ),
      ),
      curve: Curves.linear,
      child: child, duration: Duration(milliseconds: 500),
    );
  }

  List<Color> getColorList(Color color) {  //renk ayarları
    if (color is MaterialColor) {
      return [
        color[300],   
        color[600],
        color[700],
        color[900],
      ];
    } else {
      return List<Color>.filled(4, color);
    }
  }
}