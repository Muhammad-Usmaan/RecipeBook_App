import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructionTab extends StatefulWidget {
  const InstructionTab({super.key});

  @override
  State<InstructionTab> createState() => _InstructionTabState();
}

class _InstructionTabState extends State<InstructionTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "How to Cook",
              style: GoogleFonts.playfair(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce id ex a orci viverra aliquam. Nullam convallis, magna non vulputate egestas, risus nulla elementum felis, vel posuere ex lorem id lacus. Ut scelerisque eros sit amet libero tempus, nec consequat purus tincidunt. Curabitur suscipit nisi at est tincidunt.",
                style: GoogleFonts.zenMaruGothic(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 99, 99, 99)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
