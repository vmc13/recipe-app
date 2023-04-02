import 'package:flutter/material.dart';

import '../models/recipe.dart';
import 'recipe_card.dart';

class PageViewRecipeList extends StatefulWidget {
  const PageViewRecipeList({super.key});

  @override
  State<PageViewRecipeList> createState() => _PageViewRecipeListState();
}

class _PageViewRecipeListState extends State<PageViewRecipeList> {
  final PageController pageController = PageController(viewportFraction: 0.75);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 401,
      child: PageView.builder(
          padEnds: false,
          controller: pageController,
          itemCount: recipes.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            bool active = index  == currentPage;
            return Opacity(
              // when the card is activated, its opacity will be 100%, while the next card will have an opacity of 60%
              opacity: currentPage == index? 1.0 : 0.5,
              child: RecipeCard(
                active: active,
                index: index,
                recipe: recipes[index],
              ),
            );
          }),
    );
  }

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      int position = pageController.page!.round();
      if (currentPage!=position) {
        setState(() {
          currentPage = position;
        });
      }
    });
  }
}
