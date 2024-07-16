class Product {
  String id;
  String name;
  ProductData? data;

  Product({required this.id, required this.name, this.data});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      data: json['data'] != null ? ProductData.fromJson(json['data']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'data': data?.toJson(),
    };
  }
}
class ProductData {
  String? color;
  String? capacity;
  String? capacityGB;
  double? price;
  String? generation;
  int? year;
  String? cpuModel;
  String? hardDiskSize;
  String? strapColour;
  String? caseSize;
  String? description;
  double? screenSize;

  ProductData({
    this.color,
    this.capacity,
    this.capacityGB,
    this.price,
    this.generation,
    this.year,
    this.cpuModel,
    this.hardDiskSize,
    this.strapColour,
    this.caseSize,
    this.description,
    this.screenSize,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) {
    return ProductData(
      color: json['color'] ?? json['Color'],
      capacity: json['capacity'] ?? json['Capacity'],
      capacityGB: json['capacity GB'] != null ? json['capacity GB'].toString() : null,
      price: json['price'] != null ? json['price'].toDouble() : null,
      generation: json['generation'] ?? json['Generation'],
      year: json['year'],
      cpuModel: json['CPU model'],
      hardDiskSize: json['Hard disk size'],
      strapColour: json['Strap Colour'],
      caseSize: json['Case Size'],
      description: json['Description'],
      screenSize: json['Screen size'] != null ? json['Screen size'].toDouble() : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'color': color,
      'capacity': capacity,
      'capacity GB': capacityGB,
      'price': price,
      'generation': generation,
      'year': year,
      'CPU model': cpuModel,
      'Hard disk size': hardDiskSize,
      'Strap Colour': strapColour,
      'Case Size': caseSize,
      'Description': description,
      'Screen size': screenSize,
    };
  }
}