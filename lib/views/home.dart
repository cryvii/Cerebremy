import 'package:flutter/material.dart';
import 'package:testest/views/widgets/recipe_card.dart';

import '../models/recipe.api.dart';
import '../models/recipe.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff6e4d6),
          iconTheme: IconThemeData(
            color: Colors.black, // Set your desired color here
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.restaurant_menu, color: Colors.black),
              SizedBox(width: 10),
              Text('Recipes', style:
              TextStyle(color: Colors.black))
            ],
          ),
        ),
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(
                      title: _recipes[index].name,
                      cookTime: _recipes[index].totalTime,
                      rating: _recipes[index].rating.toString(),
                      thumbnailUrl: _recipes[index].images);
                },
              ));
  }
}


// import 'package:flutter/material.dart';
// import 'package:testest/views/widgets/recipe_card.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.restaurant_menu),
//               SizedBox(width: 10),
//               Text('Food Recipes'),
//             ],
//           ),
//         ),
//         body: SingleChildScrollView(
//           physics: AlwaysScrollableScrollPhysics(),
//           child: Column(
//             children: [
//               GestureDetector(
//         onTap: () {
//           // handle the tap event here
//           print('RecipeCard tapped');
//         },
//         child: RecipeCard(
//           title: 'My recipe',
//           rating: '4.9',
//           cookTime: '30 min',
//           thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
//         ),
//       ),
//               RecipeCard(
//                 title: 'My recipe',
//                 rating: '4.9',
//                 cookTime: '30 min',
//                 thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
//               ),
//               RecipeCard(
//                 title: 'My recipe',
//                 rating: '4.9',
//                 cookTime: '30 min',
//                 thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
//               ),
//               RecipeCard(
//                 title: 'My recipe',
//                 rating: '4.9',
//                 cookTime: '30 min',
//                 thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
//               ),
//               RecipeCard(
//                 title: 'My recipe',
//                 rating: '4.9',
//                 cookTime: '30 min',
//                 thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
//               ),
//               RecipeCard(
//                 title: 'My recipe',
//                 rating: '4.9',
//                 cookTime: '30 min',
//                 thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
//               ),
//               RecipeCard(
//                 title: 'My recipe',
//                 rating: '4.9',
//                 cookTime: '30 min',
//                 thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
//               ),
//               RecipeCard(
//                 title: 'My recipe',
//                 rating: '4.9',
//                 cookTime: '30 min',
//                 thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
//               ),
//               RecipeCard(
//                 title: 'My recipe',
//                 rating: '4.9',
//                 cookTime: '30 min',
//                 thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
//               ),
//               RecipeCard(
//                 title: 'My recipe',
//                 rating: '4.9',
//                 cookTime: '30 min',
//                 thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
//               ),
//             ],
//           ),
//         )
//       );
//   }
// }