import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/recipe.dart';

class PopularRecipeList extends StatefulWidget {
  const PopularRecipeList({super.key});

  @override
  State<PopularRecipeList> createState() => _PopularRecipeListState();
}

class _PopularRecipeListState extends State<PopularRecipeList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: recipes.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 98,
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.transparent),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 53.43,
                        width: 73,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/${recipes[index].recipeImage}',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 18.56),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            recipes[index].recipeName,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${recipes[index].recipeMaker}'s recipe",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: recipes[index].endColor,
                        child: Text(
                          recipes[index].recipeMaker[0],
                          style: TextStyle(color: recipes[index].startColor),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
