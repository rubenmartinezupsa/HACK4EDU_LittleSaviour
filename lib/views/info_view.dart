import 'package:flutter/material.dart';
import 'package:little_savior/utils/colors.dart';
import 'package:little_savior/utils/strings.dart';
import 'package:little_savior/utils/text_styles.dart';
import 'package:little_savior/widgets/FirstAidGridView.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Tabla de información",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset('assets/images/healthtable.jpg'),
          ),
          const SizedBox(height: 30,),
          const Text(AppStrings.tableInfo, textAlign: TextAlign.center, style: AppTextStyles.normalTextStyle,)
        ],
      ),
    );
  }
}
