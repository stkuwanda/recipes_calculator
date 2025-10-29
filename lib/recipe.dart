// A class to represent a Recipe with a label and an image URL
class Recipe {
  Recipe({
    required this.label,
    required this.imageUrl,
    required this.servings,
    required this.ingredients,
  }); // required named parameters

  String label;
  String imageUrl;
  int servings; // number of people being served
  List<Ingredient> ingredients;

  // A static list of sample recipes
  static List<Recipe> samples = [
    Recipe(
      label: 'Spaghetti and Meatballs',
      imageUrl: 'assets/2126711929_ef763de2b3_w.jpg',
      servings: 4,
      ingredients: <Ingredient>[
        Ingredient(quantity: 1, measure: 'box', name: 'Spaghetti'),
        Ingredient(quantity: 4, measure: '', name: 'Frozen Meatballs'),
        Ingredient(quantity: 0.5, measure: 'jar', name: 'sauce'),
      ],
    ),
    Recipe(
      label: 'Tomato Soup',
      imageUrl: 'assets/27729023535_a57606c1be.jpg',
      servings: 2,
      ingredients: <Ingredient>[
        Ingredient(quantity: 1, measure: 'can', name: 'Tomato Soup'),
      ],
    ),
    Recipe(
      label: 'Grilled Cheese',
      imageUrl: 'assets/3187380632_5056654a19_b.jpg',
      servings: 1,
      ingredients: <Ingredient>[
        Ingredient(quantity: 1, measure: 'slices', name: 'Cheese'),
        Ingredient(quantity: 2, measure: 'slices', name: 'Bread'),
      ],
    ),
    Recipe(
      label: 'Chocolate Chip Cookies',
      imageUrl: 'assets/15992102771_b92f4cc00a_b.jpg',
      servings: 24,
      ingredients: <Ingredient>[
        Ingredient(quantity: 4, measure: 'cups', name: 'flour'),
        Ingredient(quantity: 2, measure: 'cups', name: 'sugar'),
        Ingredient(quantity: 0.5, measure: 'cups', name: 'chips'),
      ],
    ),
    Recipe(
      label: 'Taco Salad',
      imageUrl: 'assets/8533381643_a31a99e8a6_c.jpg',
      servings: 4,
      ingredients: <Ingredient>[
        Ingredient(quantity: 4, measure: 'oz', name: 'nachos'),
        Ingredient(quantity: 3, measure: 'oz', name: 'taco meat'),
        Ingredient(quantity: 0.5, measure: 'cup', name: 'cheese'),
        Ingredient(quantity: 0.2, measure: 'cup', name: 'chopped tomatoes'),
      ],
    ),
    Recipe(
      label: 'Hawaiian Pizza',
      imageUrl: 'assets/15452035777_294cefced5_c.jpg',
      servings: 4,
      ingredients: <Ingredient>[
        Ingredient(quantity: 1, measure: 'item', name: 'pizza'),
        Ingredient(quantity: 1, measure: 'cup', name: 'pineapple'),
        Ingredient(quantity: 8, measure: 'oz', name: 'ham'),
      ],
    ),
  ];
}

// Data container for an ingredient
class Ingredient {
  Ingredient({
    required this.quantity,
    required this.measure,
    required this.name,
  });

  double quantity;
  String measure;
  String name;
}
