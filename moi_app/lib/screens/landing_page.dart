import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets.dart'; 
import 'quiz_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveContainer(
        isDark: true,
        child: SafeArea( // Notch/Status bar bata bachhauna
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 40), 
                
                Text('MOI', style: GoogleFonts.miniver(fontSize: 35, color: const Color(0xFFA194A2))),
                Text('MAISON OF IDENTITY', style: GoogleFonts.playfairDisplay(fontSize: 12, letterSpacing: 3, color: Colors.white)),
                
                const Spacer(flex: 1), 
                
                Text('DISCOVER YOUR', style: GoogleFonts.playfairDisplay(fontSize: 24, color: Colors.white)),
                Text('MANIFESTING TYPE', style: GoogleFonts.playfairDisplay(fontSize: 24, color: const Color(0xFFA194A2), fontWeight: FontWeight.w600)),
                
                const SizedBox(height: 10),
                const Text(
                  'Reveal your innate way of creating and manifesting.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, color: Colors.white70),
                ),

                const Spacer(flex: 1),

                // 3 Cards in a Row (No scrolling)
                Row(
                  children: const [
                    Expanded(child: SoulCard(title: "MEDITATIVE", imagePath: "assets/meditative_soul.png")),
                    SizedBox(width: 8),
                    Expanded(child: SoulCard(title: "PAMPERED", imagePath: "assets/pampered_soul.png")),
                    SizedBox(width: 8),
                    Expanded(child: SoulCard(title: "IMMERSIVE", imagePath: "assets/immersive_soul.png")),
                  ],
                ),
                
                const Spacer(flex: 2),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizPage())),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4A5568),
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    ),
                    child: const Text('START QUIZ', style: TextStyle(color: Colors.white, letterSpacing: 2)),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}