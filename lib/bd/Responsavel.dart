class Responsavel {

  int id;
  String nome;
  String email;
  String senha;

  Responsavel ({this.id, this.nome, this.email, this.senha});

  factory Responsavel.fromJson(Map<String, dynamic> json){
    return Responsavel(
      id: json['id'] as int,
      nome: json['nome'] as String,
      email: json['email'] as String,
      senha: json['senha'] as String,
    );
  }

}