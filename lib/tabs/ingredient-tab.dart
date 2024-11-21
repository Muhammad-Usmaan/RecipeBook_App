import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipies_book/screens/home.dart';

class IngredientTab extends StatefulWidget {
  final Recipe recipe;

   IngredientTab({required this.recipe});
  @override
  State<IngredientTab> createState() => _IngredientTabState();
}

class _IngredientTabState extends State<IngredientTab> {
  int servesNo = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (servesNo > 1) {
                        servesNo--;
                      }
                    });
                  },
                  icon: const Icon(Icons.remove_circle_outline)),
              Text(
                "Serves $servesNo",
                style: GoogleFonts.zenMaruGothic(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      servesNo++;
                    });
                  },
                  icon: const Icon(Icons.add_circle_outline_sharp)),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1.5,
                    color: const Color.fromARGB(181, 180, 180, 180)
                  )
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                  
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(widget.recipe.ingredients[index]["imageUrl"]!),
                    radius: 25,
                  ),
                  title: Text(widget.recipe.ingredients[index]["name"]!,
                   style: GoogleFonts.zenMaruGothic(
                    fontSize: 16, fontWeight: FontWeight.bold),),
            trailing: Text(widget.recipe.ingredients[index]["quantity"]!,
            style:GoogleFonts.zenMaruGothic(
              color: Colors.grey,
                    fontSize: 16, fontWeight: FontWeight.bold) ,),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
