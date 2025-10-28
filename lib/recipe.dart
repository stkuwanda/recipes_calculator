// A class to represent a Recipe with a label and an image URL
class Recipe {
  Recipe({
    required this.label,
    required this.imageUrl,
  }); // required named parameters

  String label;
  String imageUrl;

  // A static list of sample recipes
  static List<Recipe> samples = [
    Recipe(
      label: 'Spaghetti and Meatballs',
      imageUrl: 'assets/2126711929_ef763de2b3_w.jpg',
    ),
    Recipe(label: 'Tomato Soup', imageUrl: 'assets/27729023535_a57606c1be.jpg'),
    Recipe(
      label: 'Grilled Cheese',
      imageUrl: 'assets/3187380632_5056654a19_b.jpg',
    ),
    Recipe(
      label: 'Chocolate Chip Cookies',
      imageUrl: 'assets/15992102771_b92f4cc00a_b.jpg',
    ),
    Recipe(label: 'Taco Salad', imageUrl: 'assets/8533381643_a31a99e8a6_c.jpg'),
    Recipe(
      label: 'Hawaiian Pizza',
      imageUrl: 'assets/15452035777_294cefced5_c.jpg',
    ),
  ];
}
