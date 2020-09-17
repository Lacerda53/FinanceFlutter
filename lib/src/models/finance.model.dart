class Finance {
  User user;

  Finance({this.user});

  Finance.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  int id;
  String name;
  String job;
  String avatar;
  List<Overviews> overviews;

  User({this.id, this.name, this.job, this.avatar, this.overviews});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    job = json['job'];
    avatar = json['avatar'];
    if (json['overviews'] != null) {
      overviews = new List<Overviews>();
      json['overviews'].forEach((v) {
        overviews.add(new Overviews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['job'] = this.job;
    data['avatar'] = this.avatar;
    if (this.overviews != null) {
      data['overviews'] = this.overviews.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Overviews {
  String type;
  String description;
  int value;

  Overviews({this.type, this.description, this.value});

  Overviews.fromJson(Map<String, dynamic> json) {
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
