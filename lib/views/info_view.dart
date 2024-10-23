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
          Expanded(flex: 6, child: FirstAidGridView()),
          Container(margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05), child: const Text(AppStrings.tableInfo, textAlign: TextAlign.justify, style: AppTextStyles.normalTextStyle,)),
          Spacer()
        ],
      ),
    );
  }
}
