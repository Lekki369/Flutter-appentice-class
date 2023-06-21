import 'package:class_1/recipe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Recipe Calculator'),
          ),
          body: ListView.builder(
            itemCount: Recipe.recipes.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetail(
                            recipe: Recipe.recipes[index],
                          ),
                        ),
                      ),
                  child: recipe(Recipe.recipes[index]));
            },
          ),
        ),
      ),
    );
  }
}

Widget recipe(Recipe recipe) {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(recipe.imageUrl),
          const SizedBox(
            height: 14,
          ),
          Text(recipe.label),
        ],
      ),
    ),
  );
}

class RecipeDetail extends StatefulWidget {
  const RecipeDetail({super.key, required this.recipe});
  final Recipe recipe;

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _slider = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.recipe.label),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (context, index) {
                  final Ingredient ingredient =
                      widget.recipe.ingredients[index];
                  return Text(
                      '${ingredient.quantity * _slider} ${ingredient.measure} ${ingredient.name}');
                },
              ),
            ),
            Slider.adaptive(
              label: '${_slider * widget.recipe.servings} servings',
              min: 1,
              max: 10,
              divisions: 10,
              value: _slider.toDouble(),
              onChanged: (value) {
                setState(() {
                  _slider = value.round();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
