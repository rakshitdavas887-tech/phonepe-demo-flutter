import 'package:flutter/material.dart';

class FavouriteContactList extends StatelessWidget {
  const FavouriteContactList({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = [
      {"name": "Rahul", "image": "https://i.pravatar.cc/150?u=rahul"},
      {"name": "Amit", "image": "https://i.pravatar.cc/150?u=amit"},
      {"name": "Priya", "image": "https://i.pravatar.cc/150?u=priya"},
      {"name": "Neha", "image": "https://i.pravatar.cc/150?u=neha"},
    ];

    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(contacts[index]["image"]!),
                ),
                const SizedBox(height: 4),
                Text(
                  contacts[index]["name"]!,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
