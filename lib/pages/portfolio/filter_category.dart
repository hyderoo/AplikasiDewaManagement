import 'package:flutter/material.dart';

class FilterCategory extends StatelessWidget {
  final void Function(String selected) onTap;
  final String selectedCategory;
  FilterCategory({
    super.key,
    required this.onTap,
    required this.selectedCategory,
  });

  final List<String> _categories = [
    "Semua Acara",
    "Pernikahan Adat",
    "Pernikahan Modern",
    "Intimate Wedding",
    "Destination Wedding",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          final category = _categories[index];
          final isSelected = category == selectedCategory;

          return GestureDetector(
            onTap: () => onTap(category),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected ? Colors.pink[50] : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected ? Colors.pink[50]! : Colors.grey[400]!,
                  width: 1,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                category,
                style: TextStyle(
                  color: isSelected ? Colors.pink[700] : Colors.grey[700],
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
