class Surah {

  final int id;

  final String name;

  final int juz;

  bool isCompleted;



  Surah({

    required this.id,

    required this.name,

    required this.juz,

    this.isCompleted = false,

  });



  factory Surah.fromJson(Map<String, dynamic> json) {

    return Surah(

      id: json['id'],

      name: json['name'],

      juz: json['juz'],

      isCompleted: json['isCompleted'] ?? false,

    );

  }



  Map<String, dynamic> toJson() {

    return {

      'id': id,

      'name': name,

      'juz': juz,

      'isCompleted': isCompleted,

    };

  }

}