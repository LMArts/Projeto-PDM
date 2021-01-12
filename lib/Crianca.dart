class Crianca {
  String _id;
  String _nome;
  String _dataNasc;
  String _sexo;
  String _descricao;

  Crianca(this._id, this._nome, this._dataNasc, this._sexo, this._descricao);

  String get descricao => _descricao;

  set descricao(String value) {
    _descricao = value;
  }

  String get sexo => _sexo;

  set sexo(String value) {
    _sexo = value;
  }

  String get dataNasc => _dataNasc;

  set dataNasc(String value) {
    _dataNasc = value;
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
