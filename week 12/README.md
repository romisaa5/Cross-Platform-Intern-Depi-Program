# Digital Egypt Pioneers - Week 12 🚀

This week marks **Week 12** of the Digital Egypt Pioneers program.  
During the **first session**, we started learning about **Animations in Flutter** 🎨.  

We explored different types of animations and applied them in practice:

---

## 1. AnimatedContainer
- **What it does:**  
  Smoothly animates changes in its properties like size, color, margin, padding, and border radius.  

- **Main Properties:**
  - `duration` → how long the animation takes.  
  - `curve` → the animation speed pattern (e.g., easeIn, bounce).  
  - `width` / `height` → size of the container.  
  - `color` → background color.  
  - `padding` → inner spacing.  
  - `margin` → outer spacing.  
  - `decoration` → allows customizing background, border, gradient, etc.  

---

## 2. AnimatedCrossFade
- **What it does:**  
  Fades smoothly between **two widgets**.  

- **Main Properties:**
  - `duration` → how long the crossfade takes.  
  - `firstChild` → widget shown in the beginning.  
  - `secondChild` → widget shown when toggled.  
  - `crossFadeState` → controls which child is visible (`showFirst` / `showSecond`).  
  - `layoutBuilder` → allows custom control of how children are stacked.  

---

## 3. AnimatedOpacity
- **What it does:**  
  Animates the **opacity** of a widget (fade in/out effect).  

- **Main Properties:**
  - `duration` → how long the fade takes.  
  - `curve` → animation style (easeInOut, linear, etc).  
  - `opacity` → value from `0.0` (invisible) to `1.0` (fully visible).  
  - `child` → the widget being animated.  

---

## 4. Hero
- **What it does:**  
  Creates a shared element transition between two screens.  

- **Main Properties:**
  - `tag` → unique identifier that links the widget between two pages.  
  - `child` → the widget that will be animated.  
  - `flightShuttleBuilder` → lets you customize how the widget transitions.  
  - `transitionOnUserGestures` → allows Hero animation to work during back-swipe gestures.  

---

## Summary
In this session, we practiced different Flutter animation widgets:  
- **AnimatedContainer** → smooth changes in size, color, border, margin, padding.  
- **AnimatedCrossFade** → fade between two widgets.  
- **AnimatedOpacity** → fade in/out effect using opacity.  
- **Hero** → shared element transition between pages.  

✨ These animations make the app feel smoother, more interactive, and user-friendly.
