class NewProductModel {
  int? count;
  String? next;
  Null? previous;
  List<Results>? results;

  NewProductModel({this.count, this.next, this.previous, this.results});

  NewProductModel.fromJson(Map<String, dynamic> json) {
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
  String? name;
  String? imageUrl;
  bool? yellowCard;
  Null? weight;
  Reviews? reviews;
  List<Vendors>? vendors;
  String? dateAdded;
  Null? notes;

  Results(
      {this.id,
        this.name,
        this.imageUrl,
        this.yellowCard,
        this.weight,
        this.reviews,
        this.vendors,
        this.dateAdded,
        this.notes});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['image_url'];
    yellowCard = json['yellow_card'];
    weight = json['weight'];
    reviews =
    json['reviews'] != null ? new Reviews.fromJson(json['reviews']) : null;
    if (json['vendors'] != null) {
      vendors = <Vendors>[];
      json['vendors'].forEach((v) {
        vendors!.add(new Vendors.fromJson(v));
      });
    }
    dateAdded = json['date_added'];
    notes = json['notes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image_url'] = this.imageUrl;
    data['yellow_card'] = this.yellowCard;
    data['weight'] = this.weight;
    if (this.reviews != null) {
      data['reviews'] = this.reviews!.toJson();
    }
    if (this.vendors != null) {
      data['vendors'] = this.vendors!.map((v) => v.toJson()).toList();
    }
    data['date_added'] = this.dateAdded;
    data['notes'] = this.notes;
    return data;
  }
}

class Reviews {
  Null? avgRating;
  int? ratingCount;

  Reviews({this.avgRating, this.ratingCount});

  Reviews.fromJson(Map<String, dynamic> json) {
    avgRating = json['avg_rating'];
    ratingCount = json['rating_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avg_rating'] = this.avgRating;
    data['rating_count'] = this.ratingCount;
    return data;
  }
}

class Vendors {
  int? id;
  bool? available;
  String? url;
  Price? price;
  String? vendor;

  Vendors({this.id, this.available, this.url, this.price, this.vendor});

  Vendors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    available = json['available'];
    url = json['url'];
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
    vendor = json['vendor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['available'] = this.available;
    data['url'] = this.url;
    if (this.price != null) {
      data['price'] = this.price!.toJson();
    }
    data['vendor'] = this.vendor;
    return data;
  }
}

class Price {
  String? price;
  String? currency;

  Price({this.price, this.currency});

  Price.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    data['currency'] = this.currency;
    return data;
  }
}
