import 'package:flutter/material.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Personaje"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.35,
            width: double.infinity,
            child: Image.network(
              "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          const Text("Rick Sanchez"),
          const Text("Status: Alive"),
        ],
      ),
    );
  }
}