import 'package:flutter/material.dart';
import 'package:little_savior/utils/strings.dart';
import 'package:little_savior/views/tableitem_view.dart';

class FirstAidGridView extends StatelessWidget {
  final List<String> sanitaryImages = [
    'assets/images/firstaid/algodon.jpeg',
    'assets/images/firstaid/alcohol.jpeg',
    'assets/images/firstaid/agua_oxigenada.jpeg',
    'assets/images/firstaid/tiritas.jpeg',
    'assets/images/firstaid/cinta_adhesiva.jpeg',
    'assets/images/firstaid/venda.jpeg',
    'assets/images/firstaid/pastillas.jpeg',
    'assets/images/firstaid/pomada.jpeg',
    'assets/images/firstaid/jeringuilla.jpeg',
    'assets/images/firstaid/jarabe.jpeg',
    'assets/images/firstaid/pinzas.jpeg',
    'assets/images/firstaid/termometro.jpeg',
  ];

  final List<Widget> detailPages = [
    const TableItemView(imagePath: 'assets/images/firstaid/algodon.jpeg', title: AppStrings.firstAidItemTitle01, description: AppStrings.firstAidItemDesc01),
    const TableItemView(imagePath: 'assets/images/firstaid/alcohol.jpeg', title: AppStrings.firstAidItemTitle02, description: AppStrings.firstAidItemDesc02),
    const TableItemView(imagePath: 'assets/images/firstaid/agua_oxigenada.jpeg', title: AppStrings.firstAidItemTitle03, description: AppStrings.firstAidItemDesc03),
    const TableItemView(imagePath: 'assets/images/firstaid/tiritas.jpeg', title: AppStrings.firstAidItemTitle04, description: AppStrings.firstAidItemDesc04),
    const TableItemView(imagePath: 'assets/images/firstaid/cinta_adhesiva.jpeg', title: AppStrings.firstAidItemTitle05, description: AppStrings.firstAidItemDesc05),
    const TableItemView(imagePath: 'assets/images/firstaid/venda.jpeg', title: AppStrings.firstAidItemTitle06, description: AppStrings.firstAidItemDesc06),
    const TableItemView(imagePath: 'assets/images/firstaid/pastillas.jpeg', title: AppStrings.firstAidItemTitle07, description: AppStrings.firstAidItemDesc07),
    const TableItemView(imagePath: 'assets/images/firstaid/pomada.jpeg', title: AppStrings.firstAidItemTitle08, description: AppStrings.firstAidItemDesc08),
    const TableItemView(imagePath: 'assets/images/firstaid/jeringuilla.jpeg', title: AppStrings.firstAidItemTitle09, description: AppStrings.firstAidItemDesc09),
    const TableItemView(imagePath: 'assets/images/firstaid/jarabe.jpeg', title: AppStrings.firstAidItemTitle10, description: AppStrings.firstAidItemDesc10),
    const TableItemView(imagePath: 'assets/images/firstaid/pinzas.jpeg', title: AppStrings.firstAidItemTitle11, description: AppStrings.firstAidItemDesc11),
    const TableItemView(imagePath: 'assets/images/firstaid/termometro.jpeg', title: AppStrings.firstAidItemTitle01, description: AppStrings.firstAidItemDesc12),

  ];
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => detailPages[index],));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 2),
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
    );
  }
}