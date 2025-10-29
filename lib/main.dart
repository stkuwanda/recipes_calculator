import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail.dart';

void main() {
  runApp(const RecipesCalculatorApp()); // Entry point of the application
}

// Root widget of the application
class RecipesCalculatorApp extends StatelessWidget {
  const RecipesCalculatorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(); // Base theme data

    // MaterialApp is a convenience widget that wraps a number of widgets
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ), // Customizing the theme with a seed color
      home: const MyHomePage(
        title: 'Calculate Recipes',
      ), // Home page of the app
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () {
              // Navigate to the detail page when a recipe card is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RecipeDetail(recipe: Recipe.samples[index]);
                  }, // builder callback returns the new page widget
                ), // MaterialPageRoute creates a route that transitions to the new page
              ); // Navigate.push pushes a new route onto the stack
            }, // onTap callback runs when a card is tapped
            child: buildRecipeCard(
              Recipe.samples[index],
            ), // child widget defines the area where the gesture is active
          ), // Detects taps on the recipe cards
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) => Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imageUrl)),
          const SizedBox(height: 14.0),
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          ),
        ],
      ),
    ),
  );
}
