class Responsavel {
  String _id;
  String _nome;
  String _email;
  String _senha;
  String _telefone;

  Responsavel(this._id, this._nome, this._email, this._senha, this._telefone);

  String get telefone => _telefone;

  set telefone(String value) {
    _telefone = value;
  }

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }

}
