import 'package:flutter/material.dart';
import 'recipe.dart';

// This creates a new StatefulWidget which has an initializer that takes the Recipe
// details to display
class RecipeDetail extends StatefulWidget {
  const RecipeDetail({super.key, required this.recipe});

  final Recipe recipe;

  @override
  State<RecipeDetail> createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  // TODO: Add _sliderVal here

  @override
  Widget build(BuildContext context) {
    // build method describes the part of the user interface represented by this widget. It is called whenever setState is invoked.
    
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.label)),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image: AssetImage(widget.recipe.imageUrl)),
            ), // SizedBox around the Image, which defines resizable bounds for the image. Here, the height is fixed at 300 but the width will adjust to fit the aspect ratio. The unit of measurement in Flutter is logical pixels
            const SizedBox(height: 4), // this is a spacer
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
              // TODO: Add Expanda
              // TODO: Add Slider() here
            ),
          ],
        ),
      ), // SafeArea keeps app from getting to close to os interfaces eg notch or interactive areas
    ); // Scaffold widget provides a framework which implements the basic material design visual layout structure of the app.
  }
}
