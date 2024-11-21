import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipies_book/screens/home.dart';

class DetailTab extends StatefulWidget {
  final Recipe recipe;

  DetailTab({required this.recipe});

  @override
  State<DetailTab> createState() => _DetailTabState();
}

class _DetailTabState extends State<DetailTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text(
                "Description",
                style: GoogleFonts.playfair(
                    fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold,),
              ),
           
            SizedBox(width: 4,),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                widget.recipe.description,
                style: GoogleFonts.zenMaruGothic(
                  fontSize: 16,
                  color:  const Color.fromARGB(255, 99, 99, 99)
                ),
              ),
            ),
              Text(
                "Time To Cook",
                style: GoogleFonts.playfair(
                    fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold,),
              ),
           
            SizedBox(width: 4,),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                "${widget.recipe.timeToCook} Minutes",
                style: GoogleFonts.zenMaruGothic(
                  fontSize: 16,
                  color:  const Color.fromARGB(255, 99, 99, 99)
                ),
              ),
            ),
              Text(
                "Nutritions",
                style: GoogleFonts.playfair(
                    fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold,),
              ),
           
            SizedBox(width: 4,),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                widget.recipe.nutrition,
                style: GoogleFonts.zenMaruGothic(
                  fontSize: 16,
                  color:  const Color.fromARGB(255, 99, 99, 99)
                ),
              ),
            ),
              Text(
                "Recipe Type",
                style: GoogleFonts.playfair(
                    fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold,),
              ),
           
            SizedBox(width: 4,),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                widget.recipe.recipeType,
                style: GoogleFonts.zenMaruGothic(
                  fontSize: 16,
                  color:  const Color.fromARGB(255, 99, 99, 99)
                ),
              ),
            ),
              Text(
                "Difficulty",
                style: GoogleFonts.playfair(
                    fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold,),
              ),
           
            SizedBox(width: 4,),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                widget.recipe.difficulty,
                style: GoogleFonts.zenMaruGothic(
                  fontSize: 16,
                  color:  const Color.fromARGB(255, 99, 99, 99)
                ),
              ),
            ),
              Text(
                "Ratings",
                style: GoogleFonts.playfair(
                    fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold,),
              ),
           
            SizedBox(width: 4,),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.amber,),
                  SizedBox(width: 5,),
                  Text(
                    widget.recipe.rating.toString(),
                    style: GoogleFonts.zenMaruGothic(
                      fontSize: 16,
                      color:  const Color.fromARGB(255, 99, 99, 99)
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}