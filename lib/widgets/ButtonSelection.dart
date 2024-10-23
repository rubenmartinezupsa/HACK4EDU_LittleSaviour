import 'package:flutter/material.dart';

class ButtonSelection extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  final VoidCallback onPressed;

  const ButtonSelection({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Color del botón
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), // Bordes ligeramente redondeados
          ),
          padding: EdgeInsets.all(20), // Espacio interno del botón
          elevation: 5, // Sombra sutil para darle un aspecto elevado
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40, // Tamaño del ícono
              color: Colors.white, // Color del ícono
            ),
            SizedBox(height: 10), // Espacio entre ícono y texto
            Text(
              text,
              style: TextStyle(
                fontSize: 20, // Tamaño del texto
                color: Colors.white,
                fontWeight: FontWeight.bold, // Texto en negrita para destacar
              ),
              textAlign: TextAlign.center, // Centrar el texto
            ),
          ],
        ),
      ),
    );
  }
}
