import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testest/models/recipe.dart';
//
// class RecipeApi {
//   static Future<List<Recipe>> getRecipe() async {
//     var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
//         {"limit": "180", "start": "10", "tag": "list.recipe.popular"});
//
//     final response = await http.get(uri, headers: {
//       'X-RapidAPI-Key': '47cf55adf6msh42bde4b5f5bfc13p103b14jsncfaaafcf5efe',
//       "x-rapidapi-host": "yummly2.p.rapidapi.com",
//       "useQueryString": "true"
//     });
//
//     Map data = jsonDecode(response.body);
//     if (data == null || data['feed'] == null) {
//       // Handle null data or feed property
//       return [];
//     }
//
//     List _temp = [];
//
//     for (var i in data['feed']) {
//       if (i['content'] != null && i['content']['details'] != null) {
//         _temp.add(i['content']['details']);
//       }
//     }
//
//     return Recipe.recipesFromSnapshot(_temp);
//   }
// }

class RecipeApi {
  static const int PAGE_SIZE = 40;

  static Future<List<Recipe>> getRecipe({int pageCount = 5}) async {
    List<Recipe> recipes = [];

    for (int page = 0; page < pageCount; page++) {
      var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
          {"limit": PAGE_SIZE.toString(), "start": (page * PAGE_SIZE).toString(), "tag": "list.recipe.popular"});

      final response = await http.get(uri, headers: {
        'X-RapidAPI-Key': '47cf55adf6msh42bde4b5f5bfc13p103b14jsncfaaafcf5efe',
        "x-rapidapi-host": "yummly2.p.rapidapi.com",
        "useQueryString": "true"
      });

      Map data = jsonDecode(response.body);
      if (data == null || data['feed'] == null) {
        // Handle null data or feed property
        continue;
      }

      List _temp = [];

      for (var i in data['feed']) {
        if (i['content'] != null && i['content']['details'] != null) {
          _temp.add(i['content']['details']);
        }
      }

      List<Recipe> pageRecipes = _temp.map((recipeData) => Recipe.fromJson(recipeData)).toList();
      recipes.addAll(pageRecipes);
    }

    return recipes;
  }
}
