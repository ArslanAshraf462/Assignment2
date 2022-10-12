class CategoriesModel {
  int? count;
  Null? next;
  Null? previous;
  List<Results>? results;

  CategoriesModel({this.count, this.next, this.previous, this.results});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? name;
  String? iconSvg;

  Results({this.name, this.iconSvg});

  Results.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    iconSvg = json['icon_svg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['icon_svg'] = this.iconSvg;
    return data;
  }
}
