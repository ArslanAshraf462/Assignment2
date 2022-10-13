class ProductDetailModel {
  int? id;
  String? name;
  String? units;
  String? imageUrl;
  String? notes;
  bool? yellowCard;
  List<String>? categories;
  List<Vendors>? vendors;
  Reviews? reviews;
  String? dateAdded;

  ProductDetailModel(
      {this.id,
        this.name,
        this.units,
        this.imageUrl,
        this.notes,
        this.yellowCard,
        this.categories,
        this.vendors,
        this.reviews,
        this.dateAdded});

  ProductDetailModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    units = json['units'];
    imageUrl = json['image_url'];
    notes = json['notes'];
    yellowCard = json['yellow_card'];
    categories = json['categories'].cast<String>();
    if (json['vendors'] != null) {
      vendors = <Vendors>[];
      json['vendors'].forEach((v) {
        vendors!.add(new Vendors.fromJson(v));
      });
    }
    reviews =
    json['reviews'] != null ? new Reviews.fromJson(json['reviews']) : null;
    dateAdded = json['date_added'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['units'] = this.units;
    data['image_url'] = this.imageUrl;
    data['notes'] = this.notes;
    data['yellow_card'] = this.yellowCard;
    data['categories'] = this.categories;
    if (this.vendors != null) {
      data['vendors'] = this.vendors!.map((v) => v.toJson()).toList();
    }
    if (this.reviews != null) {
      data['reviews'] = this.reviews!.toJson();
    }
    data['date_added'] = this.dateAdded;
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

class Reviews {
  double? avgRating;
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
