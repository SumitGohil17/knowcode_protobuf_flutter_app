class Waste {
  final String id;
  final String auth0Id;
  final String cropType;
  final String wasteType;
  final double quantity;
  final String unit;
  final double price;
  final DateTime availableFrom;
  final Location location;
  final List<String> images;
  final String status;
  final String? description;

  Waste({
    required this.id,
    required this.auth0Id,
    required this.cropType,
    required this.wasteType,
    required this.quantity,
    required this.unit,
    required this.price,
    required this.availableFrom,
    required this.location,
    required this.images,
    required this.status,
    this.description,
  });

  factory Waste.fromJson(Map<String, dynamic> json) {
    try {
      print('Parsing waste item: $json'); // Debug log
      return Waste(
        id: json['_id']?.toString() ?? '',
        auth0Id: json['auth0Id']?.toString() ?? '',
        cropType: json['cropType']?.toString() ?? '',
        wasteType: json['wasteType']?.toString() ?? '',
        quantity: double.tryParse(json['quantity']?.toString() ?? '0') ?? 0.0,
        unit: json['unit']?.toString() ?? '',
        price: double.tryParse(json['price']?.toString() ?? '0') ?? 0.0,
        availableFrom: json['availableFrom'] != null
            ? DateTime.parse(json['availableFrom'].toString())
            : DateTime.now(),
        location:
            Location.fromJson(json['location'] as Map<String, dynamic>? ?? {}),
        images: List<String>.from(json['images'] ?? []),
        status: json['status']?.toString() ?? '',
        description: json['description']?.toString(),
      );
    } catch (e) {
      print('Error parsing Waste: $e');
      rethrow;
    }
  }
}

class Location {
  final String? address;
  final String? district;
  final String? state;
  final String pincode;

  Location({
    this.address,
    this.district,
    this.state,
    required this.pincode,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      address: json['address'],
      district: json['district'],
      state: json['state'],
      pincode: json['pincode'] ?? '',
    );
  }
}
