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
  int _sliderVal = 1;

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
            Text(widget.recipe.label, style: const TextStyle(fontSize: 18)),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  var Ingredient(
                    quantity: qty,
                    measure: msr,
                    name: nam,
                  ) = widget
                      .recipe
                      .ingredients[index]; // destructuring assignment to extract quantity and measure from the Ingredient object
                  return Text(
                    '${qty * _sliderVal} $msr $nam',
                  ); // Text using string interpolation to display runtime values
                },
              ), // ListView with one row per ingredient
            ), // Expanded widget expands to fill the space in a Column
            Slider(
              min: 1, // sets the minimum value of the slider
              max: 10, // sets the maximum value of the slider
              divisions:
                  9, // sets the number of descrete divisions on the slider
              label:
                  '${_sliderVal * widget.recipe.servings} servings', // label that shows the current value of the slider multiplied by the original servings
              value: _sliderVal
                  .toDouble(), // current value of the slider, converted to double
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue
                      .round(); // uses round() to convert the double slider value to an int then saves it in _sliderVal
                }); // calls setState to notify the framework that the state has changed and the UI needs to be rebuilt
              }, // onChanged callback runs when the slider is moved
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ), // Slider presents a round thumb that can be dragged along a track to change a value
          ],
        ),
      ), // SafeArea keeps app from getting to close to os interfaces eg notch or interactive areas
    ); // Scaffold widget provides a framework which implements the basic material design visual layout structure of the app.
  }
}
