class Product {
  final String name;
  final String category;
  final double price;
  final double? oldPrice;
  final String imageUrl;
  final bool isFavorite;
  final String description;

  const Product({
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.name,
    required this.price,
    this.oldPrice,
    this.isFavorite = false,
  });
}

final List<Product> products = [
  const Product(
    name: 'Shoes',
    category: 'Footwear',
    price: 100000,
    oldPrice: 120000,
    imageUrl: 'assets/images/shoe.jpg',
    description: 'Sepatu Berkualitas Tinggi Nyaman Dipakai',
    isFavorite: false,
  ),
  const Product(
    name: 'Laptop',
    category: 'Electronic',
    price: 9000000,
    oldPrice: 1200000,
    imageUrl: 'assets/images/laptop.jpg',
    description: 'Laptop Gaming Dengan Processor AMD RYZEN 9HX RTX 5090',
    isFavorite: true,
  ),
  const Product(
    name: 'Jordan Shoes',
    category: 'Footwear',
    price: 1000000,
    oldPrice: 1200000,
    imageUrl: 'assets/images/shoe2.jpg',
    description: 'Sepatu Jordan Kualitas Terbaik Original Dari Amerika',
    isFavorite: false,
  ),
  const Product(
    name: 'Puma',
    category: 'Footwear',
    price: 600000,
    oldPrice: 700000,
    imageUrl: 'assets/images/shoes2.jpg',
    description: 'Sepatu Puma Dengan Kualitas Terbaik Di Import Langsung Dari Amerika',
    isFavorite: false,
  ),
];