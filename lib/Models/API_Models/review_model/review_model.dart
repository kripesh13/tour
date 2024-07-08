class ReviewModel {
  String? status;
  String? requestedAt;
  int? length;
  List<Data>? data;

  ReviewModel({this.status, this.requestedAt, this.length, this.data});

  ReviewModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    requestedAt = json['requestedAt'];
    length = json['length'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['requestedAt'] = this.requestedAt;
    data['length'] = this.length;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  int? rating;
  List<String>? tour;
  User? user;
  String? review;
  String? createdAt;
  String? id;

  Data(
      {this.sId,
      this.rating,
      this.tour,
      this.user,
      this.review,
      this.createdAt,
      this.id});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    rating = json['rating'];
    tour = json['tour'].cast<String>();
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    review = json['review'];
    createdAt = json['createdAt'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['rating'] = this.rating;
    data['tour'] = this.tour;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['review'] = this.review;
    data['createdAt'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}

class User {
  String? photo;
  String? sId;
  String? name;
  String? id;

  User({this.photo, this.sId, this.name, this.id});

  User.fromJson(Map<String, dynamic> json) {
    photo = json['photo'];
    sId = json['_id'];
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['photo'] = this.photo;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}
