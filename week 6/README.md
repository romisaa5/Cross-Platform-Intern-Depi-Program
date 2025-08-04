# 📅 DEPI - Week 6 

## 🧠 What We Covered

## 📍 Session 1

In the **first session** of Week 6, we covered important topics that help us customize and enrich our Flutter apps:

---

## 🎨 App Theming with `MaterialApp`

We learned how to:
- Customize the **theme** of our Flutter app using the `theme` property inside `MaterialApp`.
- Change primary colors, fonts, and other global styles for a consistent UI.
- Apply themes across the entire app to avoid repetitive styling.

---

## 📦 Adding and Using Packages

We were introduced to how to:
- Add **external packages** using `pubspec.yaml`.
- Import and use packages inside our code.
- Configure and customize them based on our app's needs.

> Example: using a package for custom fonts, icons, or state management.

---

## 🧱 The `Stack` Widget

We explored the `Stack` widget, which allows us to:
- Place widgets **on top of each other**, like layers.
- Create overlapping UI (e.g., placing a button over an image).
- Use `Positioned` widget to control exact placement inside the Stack.

---

## 📝 Task

At the end of the session, we were given a **task** to implement everything we learned:
- Apply app theming  
- Use at least one external package  
- Build a layout using the `Stack` widget

✅ In my task, I used the [`flutter_rating_stars`](https://pub.dev/packages/flutter_rating_stars) package to display a rating widget inside the UI.

---

## 📍 Session 2

In the **second session** of Week 6, we focused on making our Flutter apps more structured, interactive, and easier to maintain:

---

## ✏️ Working with `TextFormField`

We learned how to:
- Use `TextFormField` to take user input.
- Attach a `TextEditingController` to read and manage the text.
- Add **validation** to ensure inputs are correct before submitting (e.g., required fields, email format).

---

## 🔁 Orientation Handling

We explored how to:
- Detect device **orientation** using `MediaQuery.of(context).orientation`.
- Build responsive layouts that adapt to **portrait** or **landscape** modes dynamically.
- Change UI elements (like layout direction, spacing, or width) based on orientation.

---

## 🖼️ Displaying Images from Assets

We practiced how to:
- Add and organize images inside the `assets/` folder.
- Configure them in `pubspec.yaml`.
- Display them using `Image.asset()` and apply `fit` properties like `BoxFit.cover`, `BoxFit.fill`, and `BoxFit.contain`.

---

## 🗂️ Project Structure & Custom Widgets

We discussed:
- How to organize our project files into folders (`screens/`, `widgets/`, `theme/`...etc).
- The importance of creating **custom widgets** to reuse code and make it cleaner and more readable.
- Splitting UI components into smaller parts for better maintenance.

---

## 📝 Task

At the end of the session, we were asked to build a screen that includes:
- A `TextFormField` with validation and a controller.
- A responsive layout that changes with orientation.
- An image from assets.
- Code that is refactored using custom widgets and a clean folder structure.
  

---

## ✅ Summary

This week started with deeper UI customization in Flutter. We learned how to:
- Use themes for app-wide styling
- Add external functionality with packages
- Create layered designs using the Stack widget
- Structure our projects using custom widgets and clean folders

> 🚀 More to come in the next session!
