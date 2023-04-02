import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/recipe.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key, this.active, this.index, this.recipe});

  final bool? active;
  final int? index;
  final Recipe? recipe;

  @override
  Widget build(BuildContext context) {
    // when the card is active its blur will be 16, when not, it will be 0
    final double blur = active! ? 16 : 0;
    final double offset = active! ? 4 : 0;
    final double top = active! ? 0 : 46;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(
        top: top,
        bottom: 0,
        right: 15.5,
        left: active! ? 32.5 : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: recipe!.startColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.1),
            blurRadius: blur,
            offset: Offset(0, offset),
          )
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/${recipe!.recipeImage}'),
        ),
        
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              gradient: LinearGradient(
                  colors: [
                    recipe!.startColor!,
                    recipe!.endColor!.withOpacity(0.2)
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  tileMode: TileMode.clamp,
                  stops: const [0.2, 0.6]),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(
                left: 24,
                right: 16,
                top: 10,
              ),
              height: 87,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32))),
              child: Text(
                recipe!.recipeName,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 84.75,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.5,
                      vertical: 5,
                    ),
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Text(
                      'Recipe',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: recipe!.startColor,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.shareFromSquare),
                        iconSize: 20,
                        color: Colors.white,
                        onPressed: () {
                          print('Share');
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.heart),
                        iconSize: 20,
                        color: Colors.white,
                        onPressed: () {
                          print('Save');
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
