import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({super.key});

  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  int selectedSize = 0;
  final List<String> sizes = ["S", "M", "L", "XL"];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Row(
      children: List.generate(
        sizes.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: ChoiceChip(
            label: Text(
              sizes[index],
              style: TextStyle(
                color: selectedSize == index 
                    ? Colors.white 
                    : (isDark ? Colors.white : Colors.black),
              ),
            ),
            selected: selectedSize == index,
            onSelected: (selected) {
              setState(() {
                selectedSize = selected ? index : selectedSize;
              });
            },
            selectedColor: Theme.of(context).primaryColor,
            backgroundColor: isDark ? Colors.grey[800] : Colors.grey[200],
          ),
        ),
      ),
    );
  }
}