import 'package:flutter/material.dart';
import 'package:little_savior/utils/colors.dart';
import 'package:little_savior/utils/text_styles.dart';

class EmergencyCard extends StatelessWidget {
  final String title;
  final String description;
  final String action1;
  final String action2;
  final void Function()? onPressed;

  const EmergencyCard({
    Key? key,
    required this.title,
    required this.description,
    required this.action1,
    required this.action2,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.cardTitleStyle
          ),
          const SizedBox(height: 8.0),
          Text(description, style: AppTextStyles.cardDescStyle,),
          const SizedBox(height: 26.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(action1, style: AppTextStyles.cardDescStyle,),
              const SizedBox(width: 30,),
              Text(action2, style: AppTextStyles.cardDescStyle,),
            ],
          ),
        ],
      ),
    );
  }
}
