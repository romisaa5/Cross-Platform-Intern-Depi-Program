# 📌 Week 7 – DEPI 

## ✅ Topics Learned (First Session)

### 1. **GridView**
- A widget that displays items in a grid layout (Rows & Columns).
- Useful for showing multiple items like images or cards.
- Examples:
  - `GridView.count`
  - `GridView.builder`

---

### 2. **ListTile**
- A ready-made widget for displaying a single row item containing:
  - `title`
  - `subtitle`
  - `leading` (Icon/Avatar on the left)
  - `trailing` (Icon on the right)
- Perfect for creating organized lists.

---

### 3. **InkWell**
- A widget that adds a **Ripple** effect when tapped.
- Makes any widget clickable with a simple animation.

---

### 4. **GestureDetector**
- A widget to detect various interactions:
  - Tap
  - Double Tap
  - Long Press
  - Swipe
- More powerful than InkWell for advanced touch events.

---

### 5. **Responsive vs Adaptive**
- **Responsive**: Design adjusts to different screen sizes (Scaling + Flexibility) using percentages or `MediaQuery`.
- **Adaptive**: Design changes based on device type or platform (Android / iOS) to match the native experience.

---

### 6. **flutter_screenutil**
- A package that helps make the UI **responsive**.
- Calculates widget sizes, spacing, and font sizes based on the device screen.
- Examples:
  ```dart
  20.w  // Responsive width
  15.h  // Responsive height
  16.sp // Responsive font size
