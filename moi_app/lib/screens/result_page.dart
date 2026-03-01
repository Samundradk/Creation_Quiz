/*import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Premium",
            style: TextStyle(color: Colors.white, fontSize: 16)),
        centerTitle: true,
        flexibleSpace: Center(
            child: Container(constraints: const BoxConstraints(maxWidth: 600))),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white))
        ],
      ),
      body: ResponsiveContainer(
        isDark: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Text("Pampered Soul™",
                  style: GoogleFonts.montserrat(
                      fontSize: 26, color: const Color(0xFF333333))),
              const SizedBox(height: 20),
              Container(
                width: 300,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 20,
                        offset: const Offset(0, 10))
                  ],
                  border: Border.all(color: Colors.grey.shade100),
                ),
                child: Column(
                  children: [
                    Text("PAMPERED SOUL™",
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    const SizedBox(height: 20),
                    const Icon(Icons.spa, size: 100, color: Color(0xFFA194A2)),
                    const SizedBox(height: 20),
                    const Text(
                        "Alignment through pleasure, beauty, and gentle indulgence...",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12, color: Colors.black54, height: 1.6)),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(40.0),
                child: Text(
                    "Top restaurant results for your area. Click below to view restaurants.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.popUntil(context, (route) => route.isFirst),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2D3E50),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15)),
                child: const Text("Return to Dashboard",
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
*/

//trial

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets.dart';

class ResultPage extends StatelessWidget {
  final int resultIndex; // index from quiz page

  const ResultPage({super.key, required this.resultIndex});

  // Personality data class
  static const List<Map<String, dynamic>> personalities = [
    {
      "name": "THE MUSICAL SOUL",
      "asset": "assets/musical_soul.png",
      /* "icon": Icons.music_note,*/
      "description": "Driven by rhythm, melody, and musical expression...",
    },
    {
      "name": "THE IMMERSIVE SOUL",
      "asset": "assets/immersive_soul.png",
      /*"icon": Icons.theater_comedy,*/
      "description": "Loves deep experiences and getting fully immersed...",
    },
    {
      "name": "THE MEDITATIVE SOUL",
      "asset": "assets/meditative_soul.png",
      /*"icon": Icons.self_improvement,*/
      "description": "Calm, reflective, and spiritually attuned...",
    },
    {
      "name": "THE PAMPERED SOUL",
      "asset": "assets/pampered_soul.png",
      /*"icon": Icons.spa,*/
      "description":
          "Alignment through pleasure, beauty, and gentle indulgence...",
    },
    {
      "name": "THE IGNITED SOUL",
      "asset": "assets/ignited_soul.png",
      /*"icon": Icons.flash_on,*/
      "description": "Energetic, passionate, and always on fire...",
    },
    {
      "name": "THE ARTIST SOUL",
      "asset": "assets/artist_soul.png",
      /*"icon": Icons.brush,*/
      "description": "Creative, imaginative, and visually expressive...",
    },
    {
      "name": "THE VISUALIZER SOUL",
      "asset": "assets/visualizer_soul.png",
      /*"icon": Icons.visibility,*/
      "description": "Sees patterns, details, and visual harmony everywhere...",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final personality = personalities[resultIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Premium",
            style: TextStyle(color: Colors.white, fontSize: 16)),
        centerTitle: true,
        flexibleSpace: Center(
            child: Container(constraints: const BoxConstraints(maxWidth: 600))),
      ),
      body: ResponsiveContainer(
        isDark: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),

              // Personality Name
              Text(personality['name'],
                  style: GoogleFonts.montserrat(
                      fontSize: 26, color: const Color(0xFF333333))),
              const SizedBox(height: 20),

              // Personality Image
              Image.asset(
                personality['asset'],
                height: 360,
              ),
              const SizedBox(height: 20),

              // Personality Card
              /*  Container(
                width: 300,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 20,
                        offset: const Offset(0, 10))
                  ],
                   border: Border.all(color: Colors.grey.shade100),
                ),
                child: Column(
                    children: [
                    Text(personality['name'],
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    const SizedBox(height: 20),
                    /*Icon(personality['icon'],
                        size: 100, color: const Color(0xFFA194A2)),
                    const SizedBox(height: 20),*/
                    Text(personality['description'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, color: Colors.black54, height: 1.6)),
                  ],
                ),
              ),
*/
              const Padding(
                padding: EdgeInsets.all(40.0),
                child: Text(
                    "Top restaurant results for your area. Click below to view restaurants.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),

              ElevatedButton(
                onPressed: () =>
                    Navigator.popUntil(context, (route) => route.isFirst),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2D3E50),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15)),
                child: const Text("Return to Dashboard",
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
