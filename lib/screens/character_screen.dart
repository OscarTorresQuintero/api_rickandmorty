import 'package:flutter/material.dart';
import 'package:multiverso_explorer/models/character_model.dart';

class CharacterScreen extends StatelessWidget {
  final Character character;

  const CharacterScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.35,
            width: double.infinity,
            child: Image.network(
              character.image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          cardData("Status:", character.status),
        ],
      ),
    );
  }

  Widget cardData(String text1, String text2) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(text1),
            Text(text2),
          ],
        ),
      ),
    );
  }
}