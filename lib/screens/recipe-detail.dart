import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipies_book/screens/home.dart';
import 'package:recipies_book/tabs/details-tab.dart';
import 'package:recipies_book/tabs/ingredient-tab.dart';
import 'package:recipies_book/tabs/instruction-tab.dart';

class RecipeDetailView extends StatefulWidget {
  final Recipe recipe;
  RecipeDetailView({required this.recipe});

  @override
  State<RecipeDetailView> createState() => _RecipeDetailViewState();
}

class _RecipeDetailViewState extends State<RecipeDetailView> {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(252, 245, 236, 1),
          body: Column(
            children: [
              Container(
                height: 280,
                width: _screenWidth,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(252, 245, 236, 1)),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                        top: 0,
                        child: Container(
                          child: Image.network(
                            widget.recipe.imageUrl,
                            fit: BoxFit.cover,
                            height: 242,
                          ),
                        )),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite),
                            style: IconButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(241, 199, 57, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.ios_share_rounded),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Text(
                        widget.recipe.name,
                        style: GoogleFonts.playfair(
                            fontSize: 28,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: _screenWidth,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(55, 158, 158, 158),
                            borderRadius: BorderRadius.circular(50)),
                        child: TabBar(
                            indicatorPadding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 4),
                            labelStyle: GoogleFonts.zenMaruGothic(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            unselectedLabelStyle: GoogleFonts.zenMaruGothic(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            unselectedLabelColor:
                                const Color.fromARGB(255, 99, 99, 99),
                            labelColor: Colors.black,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: BoxDecoration(
                                color: const Color.fromRGBO(240, 214, 181, 1),
                                borderRadius: BorderRadius.circular(50)),
                            dividerColor: Colors.transparent,
                            tabs: const [
                              Tab(
                                child: Text("Detail"),
                              ),
                              Tab(
                                child: Text("Ingredients"),
                              ),
                              Tab(
                                child: Text("Instructions"),
                              ),
                            ]),
                      ),
                      Expanded(
                        child: TabBarView(children: [
                          DetailTab(
                            recipe: widget.recipe,
                          ),
                          IngredientTab(
                            recipe: widget.recipe,
                          ),
                          const InstructionTab(),
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            width: _screenWidth,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              color: Colors.white
            ),
child:Center(
  child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                padding: EdgeInsets.symmetric(vertical: 10),
                  width: _screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromRGBO(79, 108, 78, 1),
                  ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.wandMagicSparkles,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Regenerate",
                        style:
                            GoogleFonts.playfair(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
) ,
          ),
          ),
      ),
    );
  }
}
