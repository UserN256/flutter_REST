class User{
  final int id;
  final String name;
  final String email;
  bool isEnabled;

  User(
    {required this.id, 
    required this.name, 
    required this.email,
    required this.isEnabled,
    });
}