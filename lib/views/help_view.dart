import 'package:flutter/material.dart';
import 'package:little_savior/utils/strings.dart';
import 'package:little_savior/widgets/EmergencyCard.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/colors.dart';

class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    _makingPhoneCall() async {
      var url = Uri.parse("tel:698138022");
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Pide ayuda",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _makingPhoneCall(),
        backgroundColor: AppColors.primaryColor,
        child: const Icon(
          Icons.call,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        children: [
          EmergencyCard(
            title: AppStrings.cardTitle01,
            description: AppStrings.cardDesc01,
            action1: 'Busca un adulto',
            action2: 'Llama al 911',
            onPressed: () {},
          ),
          EmergencyCard(
            title: AppStrings.cardTitle02,
            description: AppStrings.cardDesc02,
            action1: 'Estar tranquilo',
            action2: 'Busca ayuda',
            onPressed: () {},
          ),
          EmergencyCard(
            title: AppStrings.cardTitle03,
            description: AppStrings.cardDesc03,
            action1: 'Busca un adulto',
            action2: 'Llama al 911',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
