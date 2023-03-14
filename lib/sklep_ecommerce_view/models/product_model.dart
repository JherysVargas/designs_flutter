class ProductModel {
  final String name;
  final String image;
  final String? heroTag;
  final double price;
  final double priceCrypto;

  const ProductModel({
    this.heroTag,
    required this.name,
    required this.price,
    required this.image,
    required this.priceCrypto,
  });

  ProductModel copyWith({
    String? name,
    String? image,
    String? heroTag,
    double? price,
    double? priceCrypto,
  }) =>
      ProductModel(
        name: name ?? this.name,
        image: image ?? this.image,
        price: price ?? this.price,
        heroTag: heroTag ?? this.heroTag,
        priceCrypto: priceCrypto ?? this.priceCrypto,
      );
}
