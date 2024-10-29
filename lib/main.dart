import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF222222),
        appBar: AppBar(
          title: Text(
            'matching pic game',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromRGBO(83, 82, 82, 1),
        ),
        body: imagePage(),
      ),
    ),
  );
}

class imagePage extends StatefulWidget {
  const imagePage({super.key});

  @override
  State<imagePage> createState() => _imagePageState();
}

class _imagePageState extends State<imagePage> {
  int leftimagenumber = 1;
  int rightimagenumber = 2;
  void changeimage() {
    leftimagenumber = Random().nextInt(8) + 1;
    rightimagenumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          rightimagenumber == leftimagenumber ? 'you win' : 'try again ',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 42.0),
        ),
        Row(
          children: [
            Expanded(
              child: IconButton(
                  icon: Image(
                    image: AssetImage("images/$leftimagenumber.png"),
                  ),
                  onPressed: () {
                    setState(() {
                      changeimage();
                    });
                  }),
            ),
            Expanded(
              child: IconButton(
                  icon: Image(
                    image: AssetImage("images/$rightimagenumber.png"),
                  ),
                  onPressed: () {
                    setState(() {
                      changeimage();
                    });
                  }),
            )
          ],
        )
      ],
    );
  }
}
