class ProductColor {
  final String name;
  final String codeColor;
  final bool available;
  ProductColor({this.name, this.codeColor, this.available = false});
}

List<ProductColor> mColorList = [
  ProductColor(name: 'LightGrey', codeColor: '0xFFF0ECEC'),
  ProductColor(name: 'LightBlack', codeColor: '0xFF949292'),
  ProductColor(name: 'Yellow', codeColor: '0xFFFFF97A'),
  ProductColor(name: 'Black', codeColor: '0xFF000000'),
  ProductColor(name: 'Blush', codeColor: '0xFFEACAC2', available: true),
];
