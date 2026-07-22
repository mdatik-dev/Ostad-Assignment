import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F5FC),

      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          Icon(Icons.add, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.settings, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.call, color: Colors.black),
          SizedBox(width: 15),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [

              // First Circle
              Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  color: Color(0xffE7D9FA),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.icecream,
                  size: 80,
                  color: Colors.deepPurple,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Ice cream is very delicious right?",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 70),

              // Second Circle
              Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  color: Color(0xffE7D9FA),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.code,
                  size: 80,
                  color: Colors.deepPurple,
                ),
              ),

              const SizedBox(height: 20),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Programming is not boring if you love it",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}