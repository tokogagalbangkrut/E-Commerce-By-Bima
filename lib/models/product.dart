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
    description: 'ini adalah deskripsi produk',
    isFavorite: false,
  ),
  const Product(
    name: 'Laptop',
    category: 'Electronic',
    price: 100000,
    oldPrice: 120000,
    imageUrl: 'assets/images/laptop.jpg',
    description: 'ini adalah deskripsi produk',
    isFavorite: false,
  ),
  const Product(
    name: 'Jordan Shoes',
    category: 'Footwear',
    price: 100000,
    oldPrice: 120000,
    imageUrl: 'assets/images/shoe2.jpg',
    description: 'ini adalah deskripsi produk',
    isFavorite: false,
  ),
  const Product(
    name: 'Puma',
    category: 'Footwear',
    price: 100000,
    oldPrice: 120000,
    imageUrl: 'assets/images/shoes2.jpg',
    description: 'ini adalah deskripsi produk',
    isFavorite: false,
  ),
];