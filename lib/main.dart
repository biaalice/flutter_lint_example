import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Violation: missing `const` for constant constructor.
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key); // Violation: does not use `const`.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Lint Example", // Violation: uses double quotes instead of single quotes.
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Violation: missing `const` for constant constructor.
    );
  }
}

class HomePage extends StatelessWidget {
  // Violation: non-final variable, but the value is not modified.
  String message = "Hello, World!"; // Violation: double quotes.

  // Violation: missing type annotation for the variable.
  var counter = 0;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Violation: `print` used instead of a logger.
    print(message);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"), // Violation: double quotes.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            // Violation: empty `Container`, should be `SizedBox`.
            Container(),
            ElevatedButton(
              onPressed: () {
                // Violation: empty else block.
                if (counter < 5) {
                  counter++;
                } else {
                  // Does nothing.
                }
              },
              child: Text("Increase"), // Violation: double quotes.
            ),
          ],
        ),
      ),
    );
  }
}
