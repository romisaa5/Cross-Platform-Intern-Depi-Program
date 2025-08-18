import 'dart:math';

Future<String> getQuote() {
  return Future.delayed(Duration(seconds: 2), () {
    bool error = Random().nextBool();
    if (error) {
      throw Exception("Failed to fetch quote");
    }
    return "Believe you can and you're halfway there";
  });
}

Future<String> loginUser(String email, String password) {
  return Future.delayed(Duration(seconds: 2), () {
    if (email == "romisaa@gmail.com" && password == "123456") {
      return "Login successful Welcome $email";
    } else {
      throw Exception("Invalid email or password");
    }
  });
}

Future<void> main() async {
  print("Trying to login...");
  try {
    String result = await loginUser("wrong@gmail.com", "0000");
    print(result);
  } catch (error) {
    print("Error: $error");
  } finally {
    print("Login attempt finished ");
  }

  print('================================================');
  print("Fetching quote...");
  getQuote().then((quote) {
    print("Quote : $quote");
  }).catchError((error) {
    print("Error: $error");
  }).whenComplete(() {
    print("Task finished");
  });

}
