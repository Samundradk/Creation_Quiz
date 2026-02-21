import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Premium", style: TextStyle(color: Colors.white, fontSize: 16)),
        centerTitle: true,
        flexibleSpace: Center(child: Container(constraints: const BoxConstraints(maxWidth: 600))),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings, color: Colors.white))],
      ),
      body: ResponsiveContainer(
        isDark: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Text("Pampered Soul™", style: GoogleFonts.montserrat(fontSize: 26, color: const Color(0xFF333333))),
              const SizedBox(height: 20),
              
              Container(
                width: 300,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 20, offset: const Offset(0, 10))],
                  border: Border.all(color: Colors.grey.shade100),
                ),
                child: Column(
                  children: [
                    Text("PAMPERED SOUL™", style: GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey)),
                    const SizedBox(height: 20),
                    const Icon(Icons.spa, size: 100, color: Color(0xFFA194A2)), 
                    const SizedBox(height: 20),
                    const Text("Alignment through pleasure, beauty, and gentle indulgence...", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, height: 1.6)),
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(40.0),
                child: Text("Top restaurant results for your area. Click below to view restaurants.", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),

              ElevatedButton(
                onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF2D3E50), padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15)),
                child: const Text("Return to Dashboard", style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}