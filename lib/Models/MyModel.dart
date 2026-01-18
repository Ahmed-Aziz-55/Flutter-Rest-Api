/// status : true
/// message : "Data fetched successfully"
/// meta : {"totalUsers":2,"page":1,"limit":10}
/// data : [{"id":101,"name":"Ahmed Khan","email":"ahmed@gmail.com","phone":"+92-300-1234567","isActive":true,"profile":{"age":24,"gender":"male","image":"https://fakeimg.pl/200x200","address":{"country":"Pakistan","city":"Lahore","zipCode":"54000"}},"skills":["Flutter","Dart","Firebase","REST API"],"socialLinks":{"github":"https://github.com/ahmed","linkedin":"https://linkedin.com/in/ahmed"},"posts":[{"postId":1,"title":"Learning Flutter","description":"Flutter is amazing","likes":120,"comments":[{"commentId":1,"user":"Ali","message":"Great post"},{"commentId":2,"user":"Sara","message":"Helpful"}]},{"postId":2,"title":"API Integration","description":"How to use REST APIs","likes":80,"comments":[]}]},{"id":102,"name":"Sara Ali","email":"sara@gmail.com","phone":"+92-301-7654321","isActive":false,"profile":{"age":22,"gender":"female","image":"https://fakeimg.pl/200x200","address":{"country":"Pakistan","city":"Karachi","zipCode":"74000"}},"skills":["UI/UX","Figma"],"socialLinks":null,"posts":[]}]

class MyModel {
  MyModel({
      bool? status, 
      String? message, 
      Meta? meta, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _meta = meta;
    _data = data;
}

  MyModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  Meta? _meta;
  List<Data>? _data;

  bool? get status => _status;
  String? get message => _message;
  Meta? get meta => _meta;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 101
/// name : "Ahmed Khan"
/// email : "ahmed@gmail.com"
/// phone : "+92-300-1234567"
/// isActive : true
/// profile : {"age":24,"gender":"male","image":"https://fakeimg.pl/200x200","address":{"country":"Pakistan","city":"Lahore","zipCode":"54000"}}
/// skills : ["Flutter","Dart","Firebase","REST API"]
/// socialLinks : {"github":"https://github.com/ahmed","linkedin":"https://linkedin.com/in/ahmed"}
/// posts : [{"postId":1,"title":"Learning Flutter","description":"Flutter is amazing","likes":120,"comments":[{"commentId":1,"user":"Ali","message":"Great post"},{"commentId":2,"user":"Sara","message":"Helpful"}]},{"postId":2,"title":"API Integration","description":"How to use REST APIs","likes":80,"comments":[]}]

class Data {
  Data({
      int? id, 
      String? name, 
      String? email, 
      String? phone, 
      bool? isActive, 
      Profile? profile, 
      List<String>? skills, 
      SocialLinks? socialLinks, 
      List<Posts>? posts,}){
    _id = id;
    _name = name;
    _email = email;
    _phone = phone;
    _isActive = isActive;
    _profile = profile;
    _skills = skills;
    _socialLinks = socialLinks;
    _posts = posts;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _phone = json['phone'];
    _isActive = json['isActive'];
    _profile = json['profile'] != null ? Profile.fromJson(json['profile']) : null;
    _skills = json['skills'] != null ? json['skills'].cast<String>() : [];
    _socialLinks = json['socialLinks'] != null ? SocialLinks.fromJson(json['socialLinks']) : null;
    if (json['posts'] != null) {
      _posts = [];
      json['posts'].forEach((v) {
        _posts?.add(Posts.fromJson(v));
      });
    }
  }
  int? _id;
  String? _name;
  String? _email;
  String? _phone;
  bool? _isActive;
  Profile? _profile;
  List<String>? _skills;
  SocialLinks? _socialLinks;
  List<Posts>? _posts;

  int? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get phone => _phone;
  bool? get isActive => _isActive;
  Profile? get profile => _profile;
  List<String>? get skills => _skills;
  SocialLinks? get socialLinks => _socialLinks;
  List<Posts>? get posts => _posts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['phone'] = _phone;
    map['isActive'] = _isActive;
    if (_profile != null) {
      map['profile'] = _profile?.toJson();
    }
    map['skills'] = _skills;
    if (_socialLinks != null) {
      map['socialLinks'] = _socialLinks?.toJson();
    }
    if (_posts != null) {
      map['posts'] = _posts?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// postId : 1
/// title : "Learning Flutter"
/// description : "Flutter is amazing"
/// likes : 120
/// comments : [{"commentId":1,"user":"Ali","message":"Great post"},{"commentId":2,"user":"Sara","message":"Helpful"}]

class Posts {
  Posts({
      int? postId, 
      String? title, 
      String? description, 
      int? likes, 
      List<Comments>? comments,}){
    _postId = postId;
    _title = title;
    _description = description;
    _likes = likes;
    _comments = comments;
}

  Posts.fromJson(dynamic json) {
    _postId = json['postId'];
    _title = json['title'];
    _description = json['description'];
    _likes = json['likes'];
    if (json['comments'] != null) {
      _comments = [];
      json['comments'].forEach((v) {
        _comments?.add(Comments.fromJson(v));
      });
    }
  }
  int? _postId;
  String? _title;
  String? _description;
  int? _likes;
  List<Comments>? _comments;

  int? get postId => _postId;
  String? get title => _title;
  String? get description => _description;
  int? get likes => _likes;
  List<Comments>? get comments => _comments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['postId'] = _postId;
    map['title'] = _title;
    map['description'] = _description;
    map['likes'] = _likes;
    if (_comments != null) {
      map['comments'] = _comments?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// commentId : 1
/// user : "Ali"
/// message : "Great post"

class Comments {
  Comments({
      int? commentId, 
      String? user, 
      String? message,}){
    _commentId = commentId;
    _user = user;
    _message = message;
}

  Comments.fromJson(dynamic json) {
    _commentId = json['commentId'];
    _user = json['user'];
    _message = json['message'];
  }
  int? _commentId;
  String? _user;
  String? _message;

  int? get commentId => _commentId;
  String? get user => _user;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['commentId'] = _commentId;
    map['user'] = _user;
    map['message'] = _message;
    return map;
  }

}

/// github : "https://github.com/ahmed"
/// linkedin : "https://linkedin.com/in/ahmed"

class SocialLinks {
  SocialLinks({
      String? github, 
      String? linkedin,}){
    _github = github;
    _linkedin = linkedin;
}

  SocialLinks.fromJson(dynamic json) {
    _github = json['github'];
    _linkedin = json['linkedin'];
  }
  String? _github;
  String? _linkedin;

  String? get github => _github;
  String? get linkedin => _linkedin;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['github'] = _github;
    map['linkedin'] = _linkedin;
    return map;
  }

}

/// age : 24
/// gender : "male"
/// image : "https://fakeimg.pl/200x200"
/// address : {"country":"Pakistan","city":"Lahore","zipCode":"54000"}

class Profile {
  Profile({
      int? age, 
      String? gender, 
      String? image, 
      Address? address,}){
    _age = age;
    _gender = gender;
    _image = image;
    _address = address;
}

  Profile.fromJson(dynamic json) {
    _age = json['age'];
    _gender = json['gender'];
    _image = json['image'];
    _address = json['address'] != null ? Address.fromJson(json['address']) : null;
  }
  int? _age;
  String? _gender;
  String? _image;
  Address? _address;

  int? get age => _age;
  String? get gender => _gender;
  String? get image => _image;
  Address? get address => _address;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['age'] = _age;
    map['gender'] = _gender;
    map['image'] = _image;
    if (_address != null) {
      map['address'] = _address?.toJson();
    }
    return map;
  }

}

/// country : "Pakistan"
/// city : "Lahore"
/// zipCode : "54000"

class Address {
  Address({
      String? country, 
      String? city, 
      String? zipCode,}){
    _country = country;
    _city = city;
    _zipCode = zipCode;
}

  Address.fromJson(dynamic json) {
    _country = json['country'];
    _city = json['city'];
    _zipCode = json['zipCode'];
  }
  String? _country;
  String? _city;
  String? _zipCode;

  String? get country => _country;
  String? get city => _city;
  String? get zipCode => _zipCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['city'] = _city;
    map['zipCode'] = _zipCode;
    return map;
  }

}

/// totalUsers : 2
/// page : 1
/// limit : 10

class Meta {
  Meta({
      int? totalUsers, 
      int? page, 
      int? limit,}){
    _totalUsers = totalUsers;
    _page = page;
    _limit = limit;
}

  Meta.fromJson(dynamic json) {
    _totalUsers = json['totalUsers'];
    _page = json['page'];
    _limit = json['limit'];
  }
  int? _totalUsers;
  int? _page;
  int? _limit;

  int? get totalUsers => _totalUsers;
  int? get page => _page;
  int? get limit => _limit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalUsers'] = _totalUsers;
    map['page'] = _page;
    map['limit'] = _limit;
    return map;
  }

}