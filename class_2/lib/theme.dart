import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: Colors.black,
    ),
    displayLarge: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );

  // 2
  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    displayLarge: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Colors.white,
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: Colors.grey[900],
      textTheme: darkTextTheme,
    );
  }
}

class Card11 {
  final String image;
  final String category;
  final String title;
  final String description;
  final String chef;

  Card11(
      {required this.image,
      required this.category,
      required this.title,
      required this.description,
      required this.chef});

  static List<Card11> cards = [
    Card11(
        image: 'assets/mag1.png',
        category: 'Editor\'s Choice',
        title: 'The Art of Dough',
        description: 'Learn to make the perfect bread.',
        chef: 'Ray Wenderlich')
  ];
}

class AuthorCard {
  final String authorName;
  final String title;
  final String profileImage;

  AuthorCard(
      {required this.authorName,
      required this.title,
      required this.profileImage});
}

class Card22 extends AuthorCard {
  final String backgroundImage;
  final String sideline;
  final String endline;
  final bool? isliked;

  Card22({
    required super.authorName,
    required super.profileImage,
    required super.title,
    required this.backgroundImage,
    required this.sideline,
    required this.endline,
    this.isliked,
  });

  static Card22 card2 = Card22(
      backgroundImage: 'assets/mag5.png',
      profileImage: 'assets/author_katz.jpeg',
      authorName: 'Mike Katz',
      title: 'Smoothie Connoisseur',
      sideline: 'Smoothies',
      endline: 'Recipe');
}

class Trends {
  final String recipesTrends;

  Trends({required this.recipesTrends});

  static List<Trends> trend = [
    Trends(recipesTrends: 'Healthy'),
    Trends(recipesTrends: 'Vegan'),
    Trends(recipesTrends: 'Carrots'),
    Trends(recipesTrends: 'Greens'),
    Trends(recipesTrends: 'Wheat'),
    Trends(recipesTrends: 'Pescetarian'),
    Trends(recipesTrends: 'Mint'),
    Trends(recipesTrends: 'Lemongrass'),
    Trends(recipesTrends: 'Salad'),
    Trends(recipesTrends: 'Water')
  ];
}

class Card33 {
  final String backgroundImage;
  List<Trends> trends = Trends.trend;
  Card33({
    required this.backgroundImage,
  });

  static Card33 card33 = Card33(
    backgroundImage: 'assets/mag2.png',
  );
}
