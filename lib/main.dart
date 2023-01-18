// Qas - Easily manage multiple FLOSS repositories.
// Copyright (C) 2022 EAS Barbosa
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Qas',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow)),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.account_circle_rounded,
          color: Colors.yellow,
        ),
        title: const Text('Bem vindo ao Buxito'),
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.red,
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontStyle: FontStyle.italic)),
          onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const SecondPage();
            },
          )),
          child: const Text("Cabeçota!!!"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cabeçota II'),
        ),
        body: const Center(
          child: Text('Muito cabeçota!!!'),
        ));
  }
}
