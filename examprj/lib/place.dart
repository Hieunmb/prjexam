class Place {
  final int id;
  final String name;
  final String description;
  final String thumbnailUrl;  // New field

  Place({required this.id, required this.name, required this.description, required this.thumbnailUrl});

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      thumbnailUrl: json['thumbnailUrl'],  // New field
    );
  }
}
