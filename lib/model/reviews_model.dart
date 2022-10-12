class ReviewModel {
  int? count;
  String? next;
  Null? previous;
  List<Results>? results;

  ReviewModel({this.count, this.next, this.previous, this.results});

  ReviewModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  bool? useful;
  bool? foundProduct;
  String? keep;
  String? change;
  int? recommendProduct;
  int? problemSolved;
  int? age;
  String? emailAddress;
  String? diet;
  String? createdDate;

  Results(
      {this.id,
        this.useful,
        this.foundProduct,
        this.keep,
        this.change,
        this.recommendProduct,
        this.problemSolved,
        this.age,
        this.emailAddress,
        this.diet,
        this.createdDate});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    useful = json['useful'];
    foundProduct = json['found_product'];
    keep = json['keep'];
    change = json['change'];
    recommendProduct = json['recommend_product'];
    problemSolved = json['problem_solved'];
    age = json['age'];
    emailAddress = json['email_address'];
    diet = json['diet'];
    createdDate = json['created_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['useful'] = this.useful;
    data['found_product'] = this.foundProduct;
    data['keep'] = this.keep;
    data['change'] = this.change;
    data['recommend_product'] = this.recommendProduct;
    data['problem_solved'] = this.problemSolved;
    data['age'] = this.age;
    data['email_address'] = this.emailAddress;
    data['diet'] = this.diet;
    data['created_date'] = this.createdDate;
    return data;
  }
}
