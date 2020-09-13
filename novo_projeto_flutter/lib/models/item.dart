class Item {
  String titulo;
  String hora;
  bool done;

  Item({this.titulo, this.hora, this.done});

  Item.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    hora = json['hora'];
    done = json['done'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = this.titulo;
    data['hora'] = this.hora;
    data['done'] = this.done;
    return data;
  }
}
