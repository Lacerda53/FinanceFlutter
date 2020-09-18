class Overview {
  String type;
  String description;
  int value;

  Overview({this.type, this.description, this.value});

  Overview.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    description = json['description'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['description'] = this.description;
    data['value'] = this.value;
    return data;
  }
}
