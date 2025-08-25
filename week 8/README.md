# 🚀 Digital Pioneers – Week 8  

## 📌 First Session – Project Structure (Utils & Fonts)
We explored the **utils folder** in our Flutter project and its purpose:  

- `app_colors.dart` → defines the **color palette** of the app.  
- `app_texts.dart` → contains **static text constants** used across the app.  
- `app_paths.dart` → stores **asset paths** (images, icons, etc.).  
- `app_fonts.dart` → defines **font families** and **styles**.  
- `app_sizes.dart` → manages **responsive sizes and spacing**.  
- `app_consts.dart` → general **project constants**.  
- `app_validators.dart` → functions for **input validation**.  

We also learned how to **add and use custom fonts** in Flutter.  

---

## 📌 Second Session – Futures & Async Programming

### 🔹 What is a Future?
A **Future** in Dart represents a **value that will be available in the future** (either success or error).  
It’s commonly used for **asynchronous tasks** like API calls, file reading, or delays.  

---

### 🔹 Handling Futures with `.then()`, `.catchError()`, and `.whenComplete()`

```dart
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Data loaded successfully!";
  });
}

void main() {
  fetchData()
    .then((data) {
      print(data); // Success case
    })
    .catchError((error) {
      print("Error occurred: $error");
    })
    .whenComplete(() {
      print("Task finished (success or error).");
    });
}

```
- ✅ then → runs when the Future succeeds.
- ✅ catchError → runs if an error happens.
- ✅ whenComplete → runs at the end in both cases.

## Using async/await with try & catch
```
Future<String> loginUser(String email, String password) async {
  await Future.delayed(Duration(seconds: 2));

  if (email == "test@email.com" && password == "1234") {
    return "Login successful!";
  } else {
    throw Exception("Invalid email or password");
  }
}

void main() async {
  try {
    String result = await loginUser("test@email.com", "wrong");
    print(result);
  } catch (error) {
    print("Login failed: $error");
  } finally {
    print("Login process finished.");
  }
}
```
- ✅ async/await → makes asynchronous code look synchronous.
- ✅ try/catch → handles exceptions (errors).
- ✅ finally → always executes at the end.
## 📌 Draggable Widgets
We also studied **Draggable Widgets** in Flutter, which allow users to **drag items** and **drop them into targets**.

### 🔹 Main Widgets:
1. **Draggable**  
   - The item that can be dragged.  
   - Important parameters:  
     - `data` → the value passed to the target.  
     - `child` → the widget shown normally.  
     - `feedback` → the widget shown while dragging.  
     - `childWhenDragging` → the widget shown in the original place during drag.  

2. **DragTarget**  
   - The area that accepts dropped items.  
   - Key callbacks:  
     - `onWillAccept` → check if the data can be accepted.  
     - `onAccept` → triggered when the item is dropped.  
     - `builder` → builds the UI and can change appearance when hovering.  

3. **LongPressDraggable**  
   - Same as `Draggable` but starts only after a **long press**, useful when combined with scrolling.  

---

### 🔹 Example: Drag and Drop Colors
```dart
Draggable<Color>(
  data: Colors.blue,
  child: Container(width: 100, height: 100, color: Colors.blue),
  feedback: Container(
    width: 100,
    height: 100,
    color: Colors.blue.withOpacity(0.5),
  ),
  childWhenDragging:
      Container(width: 100, height: 100, color: Colors.grey),
),

DragTarget<Color>(
  onAccept: (color) {
    setState(() {
      boxColor = color;
    });
  },
  builder: (context, candidateData, rejectedData) {
    return Container(
      width: 150,
      height: 150,
      color: boxColor,
      child: Center(child: Text("Drop here")),
    );
)
}

```
---

## ✅ Week 8 Summary
By the end of Week 8, we practiced:  
- **Project structuring (utils & custom fonts)**  
- **Asynchronous programming with Futures**  
- **Interactive UI with Draggable & DragTarget Widgets**  

---

## 🚀 Key Takeaways
- Organizing code into a **utils folder** makes the project more scalable and maintainable.  
- Handling **Futures** in Dart can be done with either `then/catchError` or `async/await` + `try/catch`.  
- **Draggable & DragTarget** provide a powerful way to build **interactive UIs** that support drag-and-drop actions.  

---

## 📝 Next Steps
- Apply **custom fonts** and **utils structure** in your own mini-project.  
- Practice more with **Futures** by simulating network requests.  
- Build a small **Drag & Drop game** (e.g., dragging shapes into matching boxes).  

---

## 📚 Resources

- [Flutter Official Documentation](https://docs.flutter.dev/) – The main source for everything Flutter.  
- [Dart Language Tour](https://dart.dev/guides/language/language-tour) – Full guide to learn Dart language basics and advanced features.  
- [Asynchronous programming: Futures, async, await](https://dart.dev/codelabs/async-await) – A codelab explaining how async/await works in Dart.  
- [Flutter: Async Widgets](https://docs.flutter.dev/cookbook/networking/fetch-data) – How to use FutureBuilder & StreamBuilder in real apps.  
- [Error Handling in Dart](https://dart.dev/guides/libraries/futures-error-handling) – Official guide for handling exceptions and errors with Futures.  
- [Draggable, DragTarget & LongPressDraggable](https://api.flutter.dev/flutter/widgets/Draggable-class.html) – Official Flutter documentation for draggable widgets.  

