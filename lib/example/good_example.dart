import 'dart:async';
import 'dart:developer';

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});

  void display() {
    log('Name: $name, Age: $age');
  }
}

Future<User> fetchUserData() async {
  try {
    await Future<Duration>.delayed(const Duration(seconds: 2));
    return User(name: 'John Doe', age: 30);
  } catch (e) {
    log('Error fetching user data: $e');
    rethrow;
  }
}

Future<void> main() async {
  try {
    User user = await fetchUserData();
    user.display();
  } catch (e) {
    log('Erro ao processar o usuário: $e');
  }
}
