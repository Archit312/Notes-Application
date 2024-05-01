class Notes{
  late final int id;
  late final String title;
  late final String description;
  late final String date;

  Notes({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
  });

  Notes.fromMap(Map<String, dynamic> result)
    : id = result["id"],
      title = result["title"],
      description = result["description"],
      date = result["date"];
  Map<String, Object> toMap(){
    return {
      'id': id,
      'title': title,
      'description': description,
      'date':date
    };
  }
}