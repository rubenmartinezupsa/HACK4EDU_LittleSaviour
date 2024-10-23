import 'package:flutter/material.dart';

class SanitaryGridView extends StatelessWidget {
  final List<String> sanitaryImages = [
    'assets/images/firstaid/algodon.png',
    'assets/images/firstaid/alcohol.png',
    'assets/images/firstaid/esparadrapo.png',
    'assets/images/firstaid/vendas.png',
    'assets/images/firstaid/tiritas.png',
    'assets/images/firstaid/pomada.png',
    'assets/images/firstaid/jeringuilla.png',
    'assets/images/firstaid/medicinas.png',
    'assets/images/firstaid/goteros.png',
    'assets/images/firstaid/pinza.png',
    'assets/images/firstaid/termometro.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objetos de Primeros Auxilios'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: sanitaryImages.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print('Imagen ${index + 1} seleccionada');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.redAccent, width: 2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    sanitaryImages[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}