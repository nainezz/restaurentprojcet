# 🍽️ Meals & Recipes App (Flutter)

**🔗 Live demo:** https://nainezz.github.io/restaurentprojcet/

A recipe browsing app built with **Flutter**. Explore meals by category, read the ingredients and steps for each recipe, save favourites and filter by dietary needs.

## Features

- **10 meal categories** in a colourful grid, for example Italian, Quick & Easy, Breakfast and Asian.
- **Meal lists** for each category, showing an image, duration, complexity and affordability.
- **Meal details** with the full ingredients list and numbered cooking steps.
- **Favourites.** Mark meals as favourite and find them all in their own tab.
- **Dietary filters.** Switches for gluten-free, lactose-free, vegan and vegetarian that update the meal lists straight away.
- **Navigation.** Tabs, a side drawer and named routes that pass arguments between screens.

## Tech stack

| | |
|---|---|
| Framework | Flutter (Dart) |
| Navigation | Named routes, tabs and a drawer |
| State | `StatefulWidget` with state lifted to the app root |
| Data | Local dummy data (`dummy_data.dart`) |
| Fonts | Raleway, Roboto Condensed |

## Project structure

```
lib/
├── main.dart          # Routes, theme, filter and favourite state
├── dummy_data.dart    # Categories and meals
├── models/            # Category, Meal (with dietary flags)
├── screen/            # Categories, category meals, meal detail, tabs, favourites, filters
└── widgets/           # Category item, meal item, main drawer
```

## Getting started

> This project targets **Dart 2** (`sdk: ">=2.1.0 <3.0.0"`), so use Flutter **3.7 or earlier**, or update the SDK constraint to run it on newer versions.

```bash
git clone https://github.com/nainezz/restaurentprojcet.git
cd restaurentprojcet
flutter pub get
flutter run
```

## Author

**Nainezz**, a software engineer in Nairobi, Kenya · [GitHub](https://github.com/nainezz)
