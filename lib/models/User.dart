class User {
  String name;
  String lastname;
  String email;

  User({ this.name, this.lastname, this.email });

  void remplaceAll( User user ){
    this.name = user.name;
    this.lastname = user.lastname;
    this.email = user.email;
  }

}