import 'package:flutter/material.dart';

import '../widgets/ButtonSelection.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Little Saviour", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                ButtonSelection(
                  text: 'Información',
                  icon: Icons.info,
                  color: Colors.red,
                  onPressed: () {
                    print('Botón 1 presionado');
                  },
                ),
                ButtonSelection(
                  text: 'Que es?',
                  icon: Icons.camera_alt,
                  color: Colors.red,
                  onPressed: () {
                    print('Botón 1 presionado');
                  },
                ),
                ButtonSelection(
                  text: 'Que hago?',
                  icon: Icons.abc,
                  color: Colors.red,
                  onPressed: () {
                    print('Botón 1 presionado');
                  },
                ),
                ButtonSelection(
                  text: 'Pide ayuda',
                  icon: Icons.help,
                  color: Colors.red,
                  onPressed: () {
                    print('Botón 1 presionado');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
