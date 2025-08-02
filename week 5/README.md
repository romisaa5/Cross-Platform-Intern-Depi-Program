# 📅 DEPI - Week 5: Getting Started with Flutter

## 🧠 What We Covered

In our **fifth week** of DEPI, we started exploring **Flutter**, Google’s UI toolkit for building cross-platform applications using a single codebase.

---

## 📌 What is Flutter?

- **Flutter** is an open-source framework by Google used to build beautiful, natively compiled applications for **mobile, web, and desktop**.
- It's based on the **Dart language** and focuses on performance and expressive UI.

---

## 🔍 Why Flutter over other frameworks?

| Feature              | Flutter                          | Other Frameworks               |
|----------------------|----------------------------------|--------------------------------|
| Language             | Dart                             | React Native (JS), Kotlin, etc.|
| UI Rendering         | Custom rendering engine          | Uses native components         |
| Performance          | High (compiled to native code)   | Medium to high (depends)       |
| Hot Reload           | ✅ Yes                            | ❌/⚠️ Not always                |
| Cross-Platform Code  | ✅ Mobile, Web, Desktop           | ✅ But often needs tweaks       |

---

## 🧱 Essential Widgets We Explored

| Widget           | Purpose                                                                 |
|------------------|-------------------------------------------------------------------------|
| `MaterialApp`    | Root of a Flutter app, provides material design                        |
| `Scaffold`       | Basic layout structure: AppBar, body, FAB, drawer, etc.                 |
| `AppBar`         | Top bar in the app – title, actions, backgroundColor, etc.              |
| `Row`            | Arranges widgets **horizontally**                                       |
| `Column`         | Arranges widgets **vertically**                                         |

---

## 📜 Scrolling Widgets

We learned about how to make content scrollable when it doesn't fit on the screen:

| Widget                          | Use Case                                                                 |
|----------------------------------|--------------------------------------------------------------------------|
| `SingleChildScrollView`         | Makes one child scrollable – useful for forms or long columns/rows       |
| `ListView`                      | Scrollable list of widgets                                               |
| `ListView.builder`              | More optimized – builds items lazily(on-demand)                         |
| `ListView.separated`            | Like `builder` but with a separator widget between items                 |

**Difference between them**:

- `ListView` → Good for small static lists  
- `ListView.builder` → Ideal for long dynamic lists  
- `ListView.separated` → Same as builder **plus separators** (like dividers)

---

## 💡 Summary

This week laid the **foundation for UI development** in Flutter.  
We now understand how to:
- Build basic app structures
- Use key layout widgets
- Add scrollable content efficiently

> 🔜 Stay tuned for deeper navigation, state management, and interactive UI components in the upcoming weeks!
