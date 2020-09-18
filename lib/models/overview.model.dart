class Overview {
  int id;
  String type;
  String description;
  int value;

  Overview({this.id, this.type, this.description, this.value});

  Overview.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    description = json['description'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['description'] = this.description;
    data['value'] = this.value;
    return data;
  }
}
