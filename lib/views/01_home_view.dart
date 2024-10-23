import 'package:flutter/material.dart';
import 'package:little_savior/utils/colors.dart';
import 'package:little_savior/utils/strings.dart';
import 'package:little_savior/utils/text_styles.dart';
import 'package:little_savior/views/camera_view.dart';
import 'package:little_savior/views/help_view.dart';
import 'package:little_savior/views/how_view.dart';
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
          builder: (context) => const HowView(),
        ),
      );
    }
    void navigateToHelp() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HelpView(),
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
        backgroundColor: AppColors.primaryColor,
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              crossAxisCount: 2,
              children: [
                ButtonSelection(
                  text: 'Información',
                  icon: Icons.info,
                  color: AppColors.primaryColor,
                  onPressed: () {
                    navigateToInfo();
                  },
                ),
                ButtonSelection(
                  text: '¿Que es?',
                  icon: Icons.camera_alt,
                  color: AppColors.primaryColor,
                  onPressed: () {
                    navigateToCamera();
                  },
                ),
                ButtonSelection(
                  text: '¿Que hago?',
                  icon: Icons.abc,
                  color: AppColors.primaryColor,
                  onPressed: () {
                    navigateToHow();
                  },
                ),
                ButtonSelection(
                  text: 'Pide ayuda',
                  icon: Icons.help,
                  color: AppColors.primaryColor,
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
