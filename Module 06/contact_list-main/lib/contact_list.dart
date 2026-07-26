import 'package:flutter/material.dart';

class ContactListPage extends StatelessWidget {
  const ContactListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> contacts = [
      {
        "name": "MD Atikur Rahman",
        "phone": "01736-938452",
      },
      {
        "name": "Arafat",
        "phone": "01338-1236547",
      },
      {
        "name": "Usman",
        "phone": "017445-458716",
      },
      {
        "name": "Sultan",
        "phone": "01945-9874563",
      },
      {
        "name": "Hasan Ali",
        "phone": "01445-321456",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Contact List",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "MD Atikur Rahman",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                hintText: "01736-938452",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
                child: const Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: const Icon(
                        Icons.person,
                        color: Colors.brown,
                        size: 35,
                      ),
                      title: Text(
                        contacts[index]["name"]!,
                        style: const TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        contacts[index]["phone"]!,
                        style: const TextStyle(fontSize: 16),
                      ),
                      trailing: const Icon(
                        Icons.phone,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}