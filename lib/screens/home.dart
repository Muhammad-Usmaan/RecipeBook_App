import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipies_book/functions/filter.dart';
import 'package:recipies_book/screens/recipe-detail.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> _allIngredients = [
    'Chicken',
    'Egg',
    'Onion',
    'Garlic',
    'Pepper',
    'Tomato',
    'Mutton',
    'Beef'
  ];
  List<String> _selectedIngredients =
      []; // List to keep track of selected ingredients

  List<Recipe> recipes = [
  Recipe(
    name: 'Spaghetti Bolognese',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA_EF-1qMDLEoJA2sJ9S0rbE8qgw1ffJK3Bw&s',
    description: 'A classic Italian pasta dish with a rich meat sauce.',
    ingredients: [
      {'name': 'Spaghetti', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL_JUJPcHnDrHYuGDngq1Uv1G1m_rSrS31Hw&s', 'quantity': '200g'},
      {'name': 'Ground Beef', 'imageUrl': 'https://embed.widencdn.net/img/beef/4hh1pywcnj/800x600px/Grind_Fine_85.psd?keep=c&u=7fueml', 'quantity': '300g'},
      {'name': 'Tomato Sauce', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr9vJdf6QItjWX4Pg1IaxsNjnbK3mgC1un0A&s', 'quantity': '2 cups'},
      {'name': 'Garlic', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgq5Ax0ADqERqVNjdThYQqbEbUiO-CXMsp7A&s', 'quantity': '3 cloves'},
      {'name': 'Onion', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_c4mzTsqYoLWHNziM4mHQEEp6-qCek6H7bQ&s', 'quantity': '1 medium'},
    ],
    timeToCook: 30,
    nutrition: '350 calories per serving',
    recipeType: 'Non-Vegetarian',
    rating: 4.5,
    difficulty: 'Medium',
  ),
  Recipe(
    name: 'Chicken Curry',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW7UYexyoKy3sprQedbjd-SnC12PXNDC30_w&s',
    description: 'A flavorful curry with tender chicken pieces.',
    ingredients: [
      {'name': 'Chicken', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2GqMfGUvchDp9VZv24YKm70PYkpSItIvOBw&s', 'quantity': '500g'},
      {'name': 'Curry Powder', 'imageUrl': 'https://www.rachelcooks.com/wp-content/uploads/2022/03/curry-powder-2022-1500R-11-square.jpg', 'quantity': '3 tbsp'},
      {'name': 'Coconut Milk', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT88ZYYIkZekBwVvbAPpiAlJxcWcT5PpZmyg&s', 'quantity': '1 can'},
      {'name': 'Yogurt', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfEcrxMLGQ5O9Yae93oJdjZjQThhyLaD9Zjw&s', 'quantity': '1/2 cup'},
      {'name': 'Garlic', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgq5Ax0ADqERqVNjdThYQqbEbUiO-CXMsp7A&s', 'quantity': '4 cloves'},
      {'name': 'Ginger', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBlF_wo7ksWqjWDbJvBpMFIowDreMi-KbjQQ&s', 'quantity': '1 tbsp (grated)'},
    ],
    timeToCook: 45,
    nutrition: '400 calories per serving',
    recipeType: 'Non-Vegetarian',
    rating: 4.7,
    difficulty: 'Hard',
  ),
  Recipe(
    name: 'Vegetable Stir Fry',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRglVAdjSKlGW_lqoWhbHtHY7h6jAxjg-kgIw&s',
    description: 'A quick and easy stir fry with fresh vegetables.',
    ingredients: [
      {'name': 'Bell Peppers', 'imageUrl': 'https://www.chilipeppermadness.com/wp-content/uploads/2024/02/Bell-Peppers1.jpg', 'quantity': '2 medium'},
      {'name': 'Carrots', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrE4rmYuDp7Cv0-kBa3Wmk_IR6vd7hLpMl2Q&s', 'quantity': '2 large'},
      {'name': 'Broccoli', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd-mqvWpdABpGbm5XKurhbWyZXU8GFjPkkiA&s', 'quantity': '300g'},
      {'name': 'Soy Sauce', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAmYSQ-m6vavYbrTUIaGAJ44WNSuy0HxmaNg&s', 'quantity': '2 tbsp'},
      {'name': 'Garlic', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgq5Ax0ADqERqVNjdThYQqbEbUiO-CXMsp7A&s', 'quantity': '2 cloves'},
    ],
    timeToCook: 15,
    nutrition: '150 calories per serving',
    recipeType: 'Vegetarian',
    rating: 4.3,
    difficulty: 'Easy',
  ),
  Recipe(
    name: 'Beef Tacos',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Ote5k08outXXAtGlXU_s5ajnqBGRgQU73A&s',
    description: 'Mexican-style tacos filled with seasoned beef and fresh toppings.',
    ingredients: [
      {'name': 'Ground Beef', 'imageUrl': 'https://embed.widencdn.net/img/beef/4hh1pywcnj/800x600px/Grind_Fine_85.psd?keep=c&u=7fueml', 'quantity': '400g'},
      {'name': 'Taco Shells', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMxxFVHlNK8zNBgA4YswWLHYLLhgo05cOULg&s', 'quantity': '8 pieces'},
      {'name': 'Lettuce', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzPHgfemR5x_L3WxVZjwvhboYqdOQVS5jE3Q&s', 'quantity': '2 cups (shredded)'},
      {'name': 'Cheese', 'imageUrl': 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthiest-cheese-1296x728-swiss.jpg?w=1155&h=1528', 'quantity': '1 cup (grated)'},
      {'name': 'Salsa', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMpWVOkylDrzTpxGuengoLG9Q-JRvqXJYgDA&s', 'quantity': '1 cup'},
      {'name': 'Chili', 'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiQE_QYGy0rd3GWENqejgeIFHoudegqfT5Bw&s', 'quantity': '1 tbsp'},
    ],
    timeToCook: 25,
    nutrition: '300 calories per serving',
    recipeType: 'Non-Vegetarian',
    rating: 4.8,
    difficulty: 'Medium',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    "Not sure what to cook tonight?",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                InkWell(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {
                          showBottomSheet(context: context,
                          
                           builder: (context)=> showFilterSheet(context));
                        },
                        icon:
                            const Icon(Icons.clear_all_rounded)),
                  ),
                )
              ],
            ),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(240, 214, 181, 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const FaIcon(
                            FontAwesomeIcons.wandMagicSparkles,
                            size: 18,
                            color: Color.fromRGBO(79, 108, 78, 1),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text("We'll conjure a recipe from your ingredients",
                            style: GoogleFonts.zenMaruGothic(
                              fontSize: 16,
                              color: const Color.fromRGBO(79, 108, 78, 1),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Wrap widget to display selected ingredients as chips
                            Wrap(
                              alignment: WrapAlignment.start,
                              spacing: 8.0,
                              runSpacing: 8.0,
                              children: _selectedIngredients.map((ingredient) {
                                return Chip(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  side: const BorderSide(
                                      color: Colors.transparent),
                                  label: Text(ingredient),
                                  deleteIcon: const Icon(
                                    Icons.close_rounded,
                                    color: Colors.red,
                                  ),
                                  onDeleted: () {
                                    setState(() {
                                      _selectedIngredients.remove(
                                          ingredient); // Remove ingredient on delete
                                    });
                                  },
                                );
                              }).toList(),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            // Dropdown to select new ingredient
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(252, 245, 236, 1),
                              ),
                              child: DropdownButton<String>(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 0),
                                underline: const SizedBox.shrink(),
                                icon: const SizedBox.shrink(),
                                hint: Text(
                                  "Add Ingredients",
                                  style: GoogleFonts.zenMaruGothic(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                items: _allIngredients
                                    .where((ingredient) => !_selectedIngredients
                                        .contains(ingredient))
                                    .map((ingredient) {
                                  return DropdownMenuItem(
                                    value: ingredient,
                                    child: Text(
                                      ingredient,
                                      style: GoogleFonts.zenMaruGothic(),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  if (value != null &&
                                      !_selectedIngredients.contains(value)) {
                                    setState(() {
                                      _selectedIngredients
                                          .add(value); // Add ingredient to list
                                    });
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            backgroundColor:
                                const Color.fromRGBO(79, 108, 78, 1),
                            foregroundColor: Colors.white),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.wandMagicSparkles,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text("Generate Recipe",
                                style: GoogleFonts.playfair(
                                    fontSize: 20, color: Colors.white,
                                    fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 245, 163, 41),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  const Positioned(
                    top: 7,
                    right: 35,
                    child: Image(
                      image: NetworkImage(
                          'https://png.pngtree.com/png-clipart/20220117/original/pngtree-delicious-food-hand-painted-chinese-simple-meal-png-image_7142962.png'),
                      height: 100,
                    ),
                  ),
                  Positioned(
                      top: 12,
                      left: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Starting from \$10/month",
                            style: GoogleFonts.zenMaruGothic(
                                fontSize: 16,
                                color: const Color.fromRGBO(79, 108, 78, 1)),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              "Generate Unlimited Recipies!",
                              style: GoogleFonts.playfair(
                                  wordSpacing: 2,
                                  fontSize: 28,
                                  color: const Color.fromRGBO(79, 108, 78, 1),
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "History",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("see all",
                        style: GoogleFonts.zenMaruGothic(
                            fontSize: 16,
                            color: const Color.fromRGBO(79, 108, 78, 1),
                            decoration: TextDecoration.underline)))
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final onTileRecipe = recipes[index];
                return Container(
                  margin: EdgeInsetsDirectional.symmetric(vertical: 6),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>  RecipeDetailView(recipe: onTileRecipe)));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                    tileColor: Colors.white,
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: 50,
                        child: Image(
                          image: NetworkImage(onTileRecipe.imageUrl),
                          fit: BoxFit.cover,
                          height: 60,
                        ),
                      ),
                    ),
                    title: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "${onTileRecipe.timeToCook} Min",
                              style: GoogleFonts.zenMaruGothic(
                                fontSize: 12,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${onTileRecipe.ingredients.length} Indregients",
                              style: GoogleFonts.zenMaruGothic(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "24 March",
                              style: GoogleFonts.zenMaruGothic(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        Text(
                          onTileRecipe.name,
                          style: GoogleFonts.playfair(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
class Recipe {
  final String name;
  final String imageUrl;
  final String description;
  final List<Map<String, String>> ingredients; // Includes name, image, and quantity
  final int timeToCook;
  final String nutrition;
  final String recipeType;
  final double rating;
  final String difficulty;

  Recipe({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.ingredients,
    required this.timeToCook,
    required this.nutrition,
    required this.recipeType,
    required this.rating,
    required this.difficulty,
  });
}


