import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Violação: falta de `const` para construtor constante.
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key); // Violação: não usa `const`.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Lint Example", // Violação: usa aspas duplas em vez de aspas simples.
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Violação: falta de `const` para construtor constante.
    );
  }
}

class HomePage extends StatelessWidget {
  // Violação: variável não-final, mas o valor não é modificado.
  String message = "Hello, World!"; // Violação: aspas duplas.

  // Violação: sem especificar o tipo da variável.
  var counter = 0;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Violação: `print` usado em vez de um logger.
    print(message);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"), // Violação: aspas duplas.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            // Violação: `Container` vazio, deve ser `SizedBox`.
            Container(),
            ElevatedButton(
              onPressed: () {
                // Violação: bloco else vazio.
                if (counter < 5) {
                  counter++;
                } else {
                  // Não faz nada.
                }
              },
              child: Text("Increase"), // Violação: aspas duplas.
            ),
          ],
        ),
      ),
    );
  }
}
