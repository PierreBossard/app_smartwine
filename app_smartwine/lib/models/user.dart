class User {
  static final User _instance = User._internal();
  factory User() => _instance;

  User._internal() {
    // init things inside this
  }

  // Methods, variables ...

  String _name;
  String _email;
  String _password;
  String _adresse;
  int _age;
  var _profileData;
  //User(this._email, this._password, this._saltKey, [this._name]);

  //User.facebook(this._email, this._name, this._fbID, [this._profileData]);

  String get name => _name;

  String get email => _email;

  String get password => _password;

  String get adresse => _adresse;

  String get profileData => _profileData;

  set name(String newName) {
    _name = newName;
  }

  set email(String newEmail) {
    this._email = newEmail;
  }

  set password(String newPassword) {
    this._password = newPassword;
  }

  set profileData(var profileData) {
    this._profileData = profileData;
  }

  // CONVERT NOTE OBJECT INTO A MAP OBJECT

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['name'] = _name;
    map['email'] = _email;
    map['password'] = _password;

    return map;
  }

  User.fromMapObject(Map<String, dynamic> map) {
    this._name = map['name'];
    this._email = map['email'];
    this._password = map['password'];
  }
}
