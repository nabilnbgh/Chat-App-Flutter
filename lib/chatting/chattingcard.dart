import 'package:flutter/material.dart';

class ChattingCard extends StatelessWidget {
  const ChattingCard(
      {super.key, required this.textChat, required this.direction});
  final String textChat;
  final String direction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Align(
        alignment: direction == "left" ? Alignment.topLeft : Alignment.topRight,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: direction == "left"
                ? const Color.fromARGB(255, 32, 44, 51)
                : const Color.fromARGB(255, 0, 92, 75),
            borderRadius: direction == "left"
                ? const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10))
                : const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
          ),
          child: Text(
            textChat,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
