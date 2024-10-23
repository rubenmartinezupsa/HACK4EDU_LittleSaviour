import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:little_savior/utils/strings.dart';
import 'package:little_savior/utils/text_styles.dart';
import 'package:little_savior/views/camera_view.dart';
import 'package:little_savior/views/info_view.dart';

import '../widgets/ButtonSelection.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    void navigateToInfo() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const InfoView()),
      );
    }
    void navigateToCamera() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CameraView(),
        ),
      );
    }
    void navigateToHow() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CameraView(),
        ),
      );
    }
    void navigateToHelp() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CameraView(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Little Saviour",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              AppStrings.welcomeMessage,
              style: AppTextStyles.highlightedTextStyle,
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.2),

          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                ButtonSelection(
                  text: 'Información',
                  icon: Icons.info,
                  color: Colors.red,
                  onPressed: () {
                    navigateToInfo();
                  },
                ),
                ButtonSelection(
                  text: 'Que es?',
                  icon: Icons.camera_alt,
                  color: Colors.red,
                  onPressed: () {
                    navigateToCamera();
                  },
                ),
                ButtonSelection(
                  text: 'Que hago?',
                  icon: Icons.abc,
                  color: Colors.red,
                  onPressed: () {
                    navigateToHow();
                  },
                ),
                ButtonSelection(
                  text: 'Pide ayuda',
                  icon: Icons.help,
                  color: Colors.red,
                  onPressed: () {
                    navigateToHelp();
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
