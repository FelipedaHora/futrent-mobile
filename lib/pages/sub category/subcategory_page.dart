import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/images/rounded-image.dart';
import 'package:futrent_mobile/components/primary_app_bar.dart';
import 'package:futrent_mobile/components/product_card_horizontal.dart';
import 'package:futrent_mobile/components/section_heading.dart';
import 'package:futrent_mobile/utils/sizes.dart';

class SubCategoriesPage extends StatelessWidget {
  const SubCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPrimary(
        title: Text('Fut 7'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          children: [
            /// -- BANNER
            const RoundedImage(
                imageUrl: 'assets/images/estabelecimentos/ALAMBRADO.jpg',
                width: double.infinity,
                heigth: null,
                applyImageRadius: true),
            const SizedBox(height: Sizes.spaceBtwSections),

            /// -- SUB CATEGORIES
            Column(
              children: [
                SectionHeading(title: 'Fut 7 Profissional', onPressed: () {}),
                const SizedBox(height: Sizes.spaceBtwItems / 2),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: Sizes.spaceBtwItems),
                      itemBuilder: (context, index) =>
                          const ProductCardHorizontal()),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}