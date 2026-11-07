import 'package:flutter/material.dart';

void main() {
  runApp(const MediReminderApp());
}

class MediReminderApp extends StatelessWidget {
  const MediReminderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediReminder',
      theme: ThemeData(useMaterial3: true, fontFamily: 'Roboto'),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFE),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              children: [
                const Text(
                  'MediReminder',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E3A5F),
                    letterSpacing: 0.5,
                  ),
                ),

                const SizedBox(height: 25),

                const MedicalArtwork(),

                const SizedBox(height: 30),

                const Text(
                  'Welcome to MediReminder!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E3A5F),
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  'Your health, our reminder.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF4785C5),
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  'Never miss a medication again.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF64748B),
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 35),

                SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Welcome to MediReminder!'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E5F99),
                      foregroundColor: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Let’s take care of your health.',
                  style: TextStyle(fontSize: 14, color: Color(0xFF64748B)),
                ),

                const SizedBox(height: 10),

                const Icon(
                  Icons.health_and_safety_outlined,
                  color: Color(0xFF4785C5),
                  size: 26,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Medical illustration
class MedicalArtwork extends StatelessWidget {
  const MedicalArtwork({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 310,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Soft blue background
          Container(
            width: 275,
            height: 275,
            decoration: const BoxDecoration(
              color: Color(0xFFE6F1FC),
              shape: BoxShape.circle,
            ),
          ),

          // Glass-style medical heart
          Positioned(
            top: 12,
            child: Container(
              width: 145,
              height: 145,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.75),
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFB8D8F5), width: 3),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF4785C5).withOpacity(0.15),
                    blurRadius: 25,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: const Icon(
                Icons.favorite,
                size: 75,
                color: Color(0xFF4785C5),
              ),
            ),
          ),

          // ECG symbol
          Positioned(
            top: 82,
            child: Container(width: 100, height: 3, color: Colors.white),
          ),

          // Medicine organizer
          Positioned(
            bottom: 22,
            child: Container(
              width: 225,
              height: 115,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xFF4785C5), width: 2),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF1E5F99).withOpacity(0.18),
                    blurRadius: 18,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'MY MEDICINES',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E3A5F),
                      letterSpacing: 1,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Expanded(
                    child: Row(
                      children: [
                        medicineBox('M', Icons.wb_sunny_outlined),
                        const SizedBox(width: 8),
                        medicineBox('A', Icons.restaurant_outlined),
                        const SizedBox(width: 8),
                        medicineBox('N', Icons.nightlight_outlined),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Floating capsule
          Positioned(
            top: 40,
            right: 10,
            child: Transform.rotate(
              angle: -0.6,
              child: Container(
                width: 65,
                height: 27,
                decoration: BoxDecoration(
                  color: const Color(0xFF4785C5),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Medical cross
          const Positioned(
            top: 55,
            left: 8,
            child: Icon(Icons.add_circle, size: 38, color: Color(0xFF4785C5)),
          ),
        ],
      ),
    );
  }

  // One section inside the medicine organizer
  Widget medicineBox(String label, IconData icon) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFEAF4FF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20, color: const Color(0xFF4785C5)),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E3A5F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
