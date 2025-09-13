# 🚀 DEPI – Week 9
# 🚀 Flutter State Management with Provider


---

## 1. What does “State” mean?

Think of *state* as **the current situation of your app**.

* Example: If you open a shopping app, the **items inside the cart** are part of the state.
* Example: A “dark mode” toggle → state = ON or OFF.

👉 In Flutter, the UI is a **reflection of state**. Change the state → Flutter rebuilds the widgets → new screen.

---

## 2. Why not only `setState`?

`setState` works fine for **small, local situations**:

* A counter app.
* Expanding/collapsing a card.

But problems start when:

* You need the same data in **multiple screens**.
* You want **clean code separation** (logic vs UI).
* You want to **test** your logic without a UI.

That’s where **Provider** helps.

---

## 3. What is Provider in plain words?

Provider is like a **messenger** that holds your data (state) and delivers it to any widget that asks for it.

* You keep your logic inside a class (like a “manager”).
* Widgets just say: “Hey Provider, give me the current value.”
* When data changes, Provider rings the bell → Widgets update automatically.

---

## 4. Core Vocabulary (Explain every keyword)

### `ChangeNotifier`

* A special class in Flutter.
* You extend it when you want to create a data model that can **notify** widgets when something changes.
* Think of it as a **radio station**: whenever data updates, it **broadcasts a signal**.

### `notifyListeners()`

* A function you call inside your model.
* It tells all subscribed widgets: “Hey, my data changed. Please rebuild.”

### `ChangeNotifierProvider`

* A widget that creates your model and shares it with the whole widget tree below it.
* Think of it as the **tower that broadcasts your radio signal**.

### `context.watch<T>()`

* A way for widgets to **listen** to the provider.
* If the data changes, this widget rebuilds.

### `context.read<T>()`

* A way to **access** the provider **without listening**.
* Useful in buttons (like onTap, onPressed) because you just want to *trigger an action*, not rebuild.

### `Consumer<T>`

* A widget that listens to changes but rebuilds only a **small part** of the UI.
* Good for performance.

### `Selector<T, S>`

* A smarter consumer.
* Lets you listen to only **one field** of your model, not the entire model.

---

## 5. Real‑Life Analogy

Imagine a **restaurant**:

* The **kitchen** = Provider (manages the food state).
* The **waiter** = notifyListeners() (alerts when food is ready).
* The **customer tables** = Widgets (rebuild when new food arrives).

---

## 6. Step‑by‑Step Example: Shopping Cart App

We’ll build a simple cart with **add, remove, total price**.

### Step 1 – Define Product model

```dart
class Product {
  final String id;
  final String name;
  final double price;
  const Product({required this.id, required this.name, required this.price});
}
```

### Step 2 – Create Cart Provider

```dart
import 'package:flutter/material.dart';
import 'product.dart';

class CartProvider extends ChangeNotifier {
  final Map<String, int> _items = {};

  Map<String, int> get items => _items;
  int get itemCount => _items.values.fold(0, (sum, qty) => sum + qty);

  void add(Product product) {
    _items[product.id] = (_items[product.id] ?? 0) + 1;
    notifyListeners();
  }

  void remove(Product product) {
    if (!_items.containsKey(product.id)) return;
    if (_items[product.id]! > 1) {
      _items[product.id] = _items[product.id]! - 1;
    } else {
      _items.remove(product.id);
    }
    notifyListeners();
  }
}
```

### Step 3 – Provide it in `main.dart`

```dart
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: const MyApp(),
    ),
  );
}
```

### Step 4 – Use it in UI

```dart
class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();
    final qty = cart.items[product.id] ?? 0;

    return Card(
      child: Column(
        children: [
          Text(product.name),
          Text('\$${product.price}'),
          qty == 0
              ? ElevatedButton(
                  onPressed: () => context.read<CartProvider>().add(product),
                  child: const Text('Add to Cart'),
                )
              : Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () => context.read<CartProvider>().remove(product),
                    ),
                    Text('$qty'),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () => context.read<CartProvider>().add(product),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
```

---

## 7. Common Mistakes Beginners Make

* ❌ **ProviderNotFoundException** → You forgot to wrap your app in `ChangeNotifierProvider`.
* ❌ **UI doesn’t update** → You forgot `notifyListeners()`.
* ❌ **Too many rebuilds** → You used `watch` on a parent `Scaffold`. Solution: use `Consumer` for smaller parts.
* ❌ **Hot reload not working** → After adding a new provider, do a full Hot Restart.

---

## 8. Best Practices

* Keep logic in providers, keep UI clean.
* Use `read` in buttons/callbacks; use `watch`/`Consumer` in widgets that **show** the state.
* Split your app into `models/`, `providers/`, `views/`, `widgets/`.
* Use `Selector` to avoid unnecessary rebuilds.
* Test providers separately.


##  Resources

* 📖 [Official Flutter Docs – State Management](https://docs.flutter.dev/data-and-backend/state-mgmt/intro)
* 📦 [Provider package on pub.dev](https://pub.dev/packages/provider)
* 🎥 [Flutter Dev YouTube – State Management playlist](https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG)
* 📘 *Flutter Apprentice* (Chapter on State Management)
* 📝 [Reso Coder – Flutter State Management Explained](https://resocoder.com)
