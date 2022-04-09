import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipes/components/recipe_list_item.dart';
import 'package:flutter_recipes/components/recipe_menu.dart';
import 'package:flutter_recipes/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffe", "Made Coffe"),
            RecipeListItem("burger", "Made Burger"),
            RecipeListItem("pizza", "Made Pizza"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white, // AppBar 배경색
      elevation: 1.0, // AppBar 그림자 효과 조정
      actions: [
        Icon(
          CupertinoIcons.search, // 쿠퍼티노 아이콘 사용
          color: Colors.black,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15)
      ],
    );
  }
}
