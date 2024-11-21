// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// int timeBtn = 0;
// int dietTypeBtn = 0;
// int allergicFoodBtn = 0;
// int goalBtn = 0;
// int distTypeBtn = 0;

// Widget timeRadio(String title, int index) {
//   return InkWell(
//     onTap: () {
//       timeBtn = index;
//     },
//     child: Container(
//       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//       decoration: BoxDecoration(
//           color: index == timeBtn
//               ? Color.fromRGBO(240, 193, 33, 1)
//               : Color.fromRGBO(252, 244, 235, 1),
//           borderRadius: BorderRadius.circular(30)),
//       child: Text(title),
//     ),
//   );
// }

// Widget showFilterSheet(BuildContext context) {
//   return Container(
//     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//     height: MediaQuery.of(context).size.height * 0.8,
//     child: Column(
//       children: [
//         Row(
//           children: [
//             Spacer(
//               flex: 1,
//             ),
//             Text(
//               "Recipe Preference",
//               style: GoogleFonts.playfair(
//                 fontSize: 26,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Spacer(
//               flex: 1,
//             ),
//             IconButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: Icon(Icons.close))
//           ],
//         ),
//         timeRadio("15 min", 1),
//         timeRadio("30 min", 2)
//       ],
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterSheet extends StatefulWidget {
  @override
  _FilterSheetState createState() => _FilterSheetState();
}

class _FilterSheetState extends State<FilterSheet> {
  // radio variables
  int timeBtn = 0;
  int dietTypeBtn = 0;
  int allergicFoodBtn = 0;
  int goalBtn = 0;
  int dishTypeBtn = 0;

  Widget timeRadio(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          timeBtn = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            color: index == timeBtn
                ? Color.fromRGBO(240, 193, 33, 1)
                : Color.fromRGBO(252, 244, 235, 1),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          title,
          style: GoogleFonts.zenMaruGothic(
              fontSize: 16,
              color: index == timeBtn
                  ? Colors.black
                  : const Color.fromARGB(255, 99, 99, 99),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // Diet type
  Set<int> selectedDietTypes = {};
  Widget dietTypeRadio(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          if (selectedDietTypes.contains(index)) {
            selectedDietTypes.remove(index);
          } else {
            selectedDietTypes.add(index);
          }
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            color: selectedDietTypes.contains(index)
                ? Color.fromRGBO(240, 193, 33, 1)
                : Color.fromRGBO(252, 244, 235, 1),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          title,
          style: GoogleFonts.zenMaruGothic(
              fontSize: 16,
              color: selectedDietTypes.contains(index)
                  ? Colors.black
                  : const Color.fromARGB(255, 99, 99, 99),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // Allergic Food
  Set<int> selectedAllergicFood = {};
  Widget allergicFoodRadio(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          if (selectedAllergicFood.contains(index)) {
            selectedAllergicFood.remove(index);
          } else {
            selectedAllergicFood.add(index);
          }
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            color: selectedAllergicFood.contains(index)
                ? Color.fromRGBO(240, 193, 33, 1)
                : Color.fromRGBO(252, 244, 235, 1),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          title,
          style: GoogleFonts.zenMaruGothic(
              fontSize: 16,
              color: selectedAllergicFood.contains(index)
                  ? Colors.black
                  : const Color.fromARGB(255, 99, 99, 99),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // Goal Radio
  Set<int> selectedGoals = {};
  Widget goalRadio(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          if (selectedGoals.contains(index)) {
            selectedGoals.remove(index);
          } else {
            selectedGoals.add(index);
          }
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            color: selectedGoals.contains(index)
                ? Color.fromRGBO(240, 193, 33, 1)
                : Color.fromRGBO(252, 244, 235, 1),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          title,
          style: GoogleFonts.zenMaruGothic(
              fontSize: 16,
              color: selectedGoals.contains(index)
                  ? Colors.black
                  : const Color.fromARGB(255, 99, 99, 99),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

// Dish type Radio
  Widget dishTypeRadio(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          dishTypeBtn = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            color: index == dishTypeBtn
                ? Color.fromRGBO(240, 193, 33, 1)
                : Color.fromRGBO(252, 244, 235, 1),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          title,
          style: GoogleFonts.zenMaruGothic(
              fontSize: 16,
              color: const Color.fromARGB(255, 99, 99, 99),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // width
    double _screenSize = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: MediaQuery.of(context).size.height * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Spacer(flex: 1),
              Text(
                "Recipe Preference",
                style: GoogleFonts.playfair(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(flex: 1),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close)),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Time",
                      style: GoogleFonts.playfair(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: [
                        timeRadio("Under 15 min", 1),
                        timeRadio("Under 30 min", 2),
                        timeRadio("Under 60 min", 3)
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Do you Follow any following diet?",
                      style: GoogleFonts.playfair(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: [
                        dietTypeRadio("Vegan", 1),
                        dietTypeRadio("Vegetarian", 2),
                        dietTypeRadio("Pescatarian", 3),
                        dietTypeRadio("Ketto", 4),
                        dietTypeRadio("Paleo", 5),
                        dietTypeRadio("Low-carbs", 6)
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Any indredients allergies or intolerance?",
                      style: GoogleFonts.playfair(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: [
                        allergicFoodRadio("Gluten", 1),
                        allergicFoodRadio("Egg", 2),
                        allergicFoodRadio("Dairy", 3),
                        allergicFoodRadio("Soy", 4),
                        allergicFoodRadio("Fish", 5),
                        allergicFoodRadio("Penut", 6),
                        allergicFoodRadio("Tree Nut", 7),
                        allergicFoodRadio("Shellfish", 8),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "What is your goal?",
                      style: GoogleFonts.playfair(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: [
                        goalRadio("Eat Healthy", 1),
                        goalRadio("Budget-friendly", 2),
                        goalRadio("Plan Better", 3),
                        goalRadio("Learn to Cook", 4),
                        goalRadio("Quick and Easy", 5),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Dish Type",
                      style: GoogleFonts.playfair(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: [
                        dishTypeRadio("Breakfast", 1),
                        dishTypeRadio("Brunch", 2),
                        dishTypeRadio("Lunch", 3),
                        dishTypeRadio("Appitizers", 4),
                        dishTypeRadio("Snack", 5),
                        dishTypeRadio("Dinner", 6),
                        dishTypeRadio("desert", 7),
                        dishTypeRadio("Drink", 8),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              timeBtn = 0;
                              dietTypeBtn = 0;
                              allergicFoodBtn = 0;
                              goalBtn = 0;
                              dishTypeBtn = 0;
                              selectedAllergicFood.clear();
                              selectedDietTypes.clear();
                              selectedGoals.clear();
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.clear_rounded,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                "Clear All",
                                style: GoogleFonts.playfair(
                                    fontSize: 18, color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: _screenSize,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromRGBO(79, 108, 78, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Apply Filter",
                            style: GoogleFonts.playfair(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}

Widget showFilterSheet(BuildContext context) {
  return FilterSheet();
}
