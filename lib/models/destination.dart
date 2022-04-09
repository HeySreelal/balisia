class Destination {
  String name;
  String photo;
  String subTitle;
  String description;

  Destination({
    required this.name,
    required this.photo,
    required this.subTitle,
    required this.description,
  });

  String get path => 'assets/$photo';
}
