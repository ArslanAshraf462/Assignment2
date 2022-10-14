class ReviewModel {
  int? count;
  String? next;
  List<Results>? results;

  ReviewModel({this.count, this.next, this.results});

  ReviewModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    } else {
      results = <Results>[];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? id;
  String? product;
  int? productId;
  String? consumer;
  int? rating;
  String? review;
  String? createdDate;
  String? lastUpdateDate;
  String? reviewerRef;
  String? username;

  Results(
      {this.id,
        this.product,
        this.productId,
        this.consumer,
        this.rating,
        this.review,
        this.createdDate,
        this.lastUpdateDate,
        this.reviewerRef,
        this.username});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    product = json['product'];
    productId = json['product_id'];
    consumer = json['consumer'];
    rating = json['rating'];
    review = json['review'];
    createdDate = json['created_date'];
    lastUpdateDate = json['last_update_date'];
    reviewerRef = json['reviewer_ref'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product'] = this.product;
    data['product_id'] = this.productId;
    data['consumer'] = this.consumer;
    data['rating'] = this.rating;
    data['review'] = this.review;
    data['created_date'] = this.createdDate;
    data['last_update_date'] = this.lastUpdateDate;
    data['reviewer_ref'] = this.reviewerRef;
    data['username'] = this.username;
    return data;
  }
}
