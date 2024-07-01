class SponsoredModel {
  List<SponsoredPosts>? sponsoredPosts;
  List<Trending>? trending;

  SponsoredModel({this.sponsoredPosts, this.trending});

  SponsoredModel.fromJson(Map<String, dynamic> json) {
    if (json['sponsored_posts'] != null) {
      sponsoredPosts = <SponsoredPosts>[];
      json['sponsored_posts'].forEach((v) {
        sponsoredPosts!.add(new SponsoredPosts.fromJson(v));
      });
    }
    if (json['trending'] != null) {
      trending = <Trending>[];
      json['trending'].forEach((v) {
        trending!.add(new Trending.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sponsoredPosts != null) {
      data['sponsored_posts'] =
          this.sponsoredPosts!.map((v) => v.toJson()).toList();
    }
    if (this.trending != null) {
      data['trending'] = this.trending!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SponsoredPosts {
  String? id;
  String? countryCode;
  String? userId;
  String? categoryId;
  String? postTypeId;
  String? title;
  String? description;
  String? tags;
  String? price;
  String? negotiable;
  String? contactName;
  String? email;
  String? phone;
  String? phoneHidden;
  String? address;
  String? cityId;
  String? lon;
  String? lat;
  String? ipAddr;
  String? length;
  String? width;
  String? weight;
  String? height;
  String? pickup;
  String? longitude;
  String? latitude;
  String? hyperDel;
  String? sellerDel;
  String? visits;
  String? emailToken;
  String? phoneToken;
  String? tmpToken;
  String? verifiedEmail;
  String? verifiedPhone;
  String? acceptTerms;
  String? acceptMarketingOffers;
  String? isPermanent;
  String? reviewed;
  String? featured;
  String? archived;
  String? archivedAt;
  String? archivedManually;
  String? deletionMailSentAt;
  String? fbProfile;
  String? partner;
  String? discountedPrice;
  String? trending;
  String? stock;
  String? minOrder;
  String? sampPrice;
  String? textOne;
  String? textTwo;
  String? avaTo;
  String? branded;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? image;
  int? avgRating;
  List<String>? savedByLoggedUser;

  SponsoredPosts(
      {this.id,
      this.countryCode,
      this.userId,
      this.categoryId,
      this.postTypeId,
      this.title,
      this.description,
      this.tags,
      this.price,
      this.negotiable,
      this.contactName,
      this.email,
      this.phone,
      this.phoneHidden,
      this.address,
      this.cityId,
      this.lon,
      this.lat,
      this.ipAddr,
      this.length,
      this.width,
      this.weight,
      this.height,
      this.pickup,
      this.longitude,
      this.latitude,
      this.hyperDel,
      this.sellerDel,
      this.visits,
      this.emailToken,
      this.phoneToken,
      this.tmpToken,
      this.verifiedEmail,
      this.verifiedPhone,
      this.acceptTerms,
      this.acceptMarketingOffers,
      this.isPermanent,
      this.reviewed,
      this.featured,
      this.archived,
      this.archivedAt,
      this.archivedManually,
      this.deletionMailSentAt,
      this.fbProfile,
      this.partner,
      this.discountedPrice,
      this.trending,
      this.stock,
      this.minOrder,
      this.sampPrice,
      this.textOne,
      this.textTwo,
      this.avaTo,
      this.branded,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.image,
      this.avgRating,
      this.savedByLoggedUser});

  SponsoredPosts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryCode = json['country_code'];
    userId = json['user_id'];
    categoryId = json['category_id'];
    postTypeId = json['post_type_id'];
    title = json['title'];
    description = json['description'];
    tags = json['tags'];
    price = json['price'];
    negotiable = json['negotiable'];
    contactName = json['contact_name'];
    email = json['email'];
    phone = json['phone'];
    phoneHidden = json['phone_hidden'];
    address = json['address'];
    cityId = json['city_id'];
    lon = json['lon'];
    lat = json['lat'];
    ipAddr = json['ip_addr'];
    length = json['length'];
    width = json['width'];
    weight = json['weight'];
    height = json['height'];
    pickup = json['pickup'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    hyperDel = json['hyper_del'];
    sellerDel = json['seller_del'];
    visits = json['visits'];
    emailToken = json['email_token'];
    phoneToken = json['phone_token'];
    tmpToken = json['tmp_token'];
    verifiedEmail = json['verified_email'];
    verifiedPhone = json['verified_phone'];
    acceptTerms = json['accept_terms'];
    acceptMarketingOffers = json['accept_marketing_offers'];
    isPermanent = json['is_permanent'];
    reviewed = json['reviewed'];
    featured = json['featured'];
    archived = json['archived'];
    archivedAt = json['archived_at'];
    archivedManually = json['archived_manually'];
    deletionMailSentAt = json['deletion_mail_sent_at'];
    fbProfile = json['fb_profile'];
    partner = json['partner'];
    discountedPrice = json['discounted_price'];
    trending = json['trending'];
    stock = json['stock'];
    minOrder = json['min_order'];
    sampPrice = json['samp_price'];
    textOne = json['text_one'];
    textTwo = json['text_two'];
    avaTo = json['ava_to'];
    branded = json['branded'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
    avgRating = json['avg_rating'];
    // if (json['savedByLoggedUser'] != null) {
    //   savedByLoggedUser = [];
    //   json['savedByLoggedUser'].forEach((v) {
    //     savedByLoggedUser!.add(Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['country_code'] = this.countryCode;
    data['user_id'] = this.userId;
    data['category_id'] = this.categoryId;
    data['post_type_id'] = this.postTypeId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['tags'] = this.tags;
    data['price'] = this.price;
    data['negotiable'] = this.negotiable;
    data['contact_name'] = this.contactName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['phone_hidden'] = this.phoneHidden;
    data['address'] = this.address;
    data['city_id'] = this.cityId;
    data['lon'] = this.lon;
    data['lat'] = this.lat;
    data['ip_addr'] = this.ipAddr;
    data['length'] = this.length;
    data['width'] = this.width;
    data['weight'] = this.weight;
    data['height'] = this.height;
    data['pickup'] = this.pickup;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['hyper_del'] = this.hyperDel;
    data['seller_del'] = this.sellerDel;
    data['visits'] = this.visits;
    data['email_token'] = this.emailToken;
    data['phone_token'] = this.phoneToken;
    data['tmp_token'] = this.tmpToken;
    data['verified_email'] = this.verifiedEmail;
    data['verified_phone'] = this.verifiedPhone;
    data['accept_terms'] = this.acceptTerms;
    data['accept_marketing_offers'] = this.acceptMarketingOffers;
    data['is_permanent'] = this.isPermanent;
    data['reviewed'] = this.reviewed;
    data['featured'] = this.featured;
    data['archived'] = this.archived;
    data['archived_at'] = this.archivedAt;
    data['archived_manually'] = this.archivedManually;
    data['deletion_mail_sent_at'] = this.deletionMailSentAt;
    data['fb_profile'] = this.fbProfile;
    data['partner'] = this.partner;
    data['discounted_price'] = this.discountedPrice;
    data['trending'] = this.trending;
    data['stock'] = this.stock;
    data['min_order'] = this.minOrder;
    data['samp_price'] = this.sampPrice;
    data['text_one'] = this.textOne;
    data['text_two'] = this.textTwo;
    data['ava_to'] = this.avaTo;
    data['branded'] = this.branded;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image'] = this.image;
    data['avg_rating'] = this.avgRating;
    // if (this.savedByLoggedUser != null) {
    //   data['savedByLoggedUser'] =
    //       this.savedByLoggedUser!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Trending {
  String? id;
  String? countryCode;
  String? userId;
  String? categoryId;
  String? postTypeId;
  String? title;
  String? description;
  String? tags;
  String? price;
  String? negotiable;
  String? contactName;
  String? email;
  String? phone;
  String? phoneHidden;
  String? address;
  String? cityId;
  String? lon;
  String? lat;
  String? ipAddr;
  String? length;
  String? width;
  String? weight;
  String? height;
  String? pickup;
  String? longitude;
  String? latitude;
  String? hyperDel;
  String? sellerDel;
  String? visits;
  String? emailToken;
  String? phoneToken;
  String? tmpToken;
  String? verifiedEmail;
  String? verifiedPhone;
  String? acceptTerms;
  String? acceptMarketingOffers;
  String? isPermanent;
  String? reviewed;
  String? featured;
  String? archived;
  String? archivedAt;
  String? archivedManually;
  String? deletionMailSentAt;
  String? fbProfile;
  String? partner;
  String? discountedPrice;
  String? trending;
  String? stock;
  String? minOrder;
  String? sampPrice;
  String? textOne;
  String? textTwo;
  String? avaTo;
  String? branded;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? image;
  int? avgRating;
  List<String>? savedByLoggedUser;

  Trending(
      {this.id,
      this.countryCode,
      this.userId,
      this.categoryId,
      this.postTypeId,
      this.title,
      this.description,
      this.tags,
      this.price,
      this.negotiable,
      this.contactName,
      this.email,
      this.phone,
      this.phoneHidden,
      this.address,
      this.cityId,
      this.lon,
      this.lat,
      this.ipAddr,
      this.length,
      this.width,
      this.weight,
      this.height,
      this.pickup,
      this.longitude,
      this.latitude,
      this.hyperDel,
      this.sellerDel,
      this.visits,
      this.emailToken,
      this.phoneToken,
      this.tmpToken,
      this.verifiedEmail,
      this.verifiedPhone,
      this.acceptTerms,
      this.acceptMarketingOffers,
      this.isPermanent,
      this.reviewed,
      this.featured,
      this.archived,
      this.archivedAt,
      this.archivedManually,
      this.deletionMailSentAt,
      this.fbProfile,
      this.partner,
      this.discountedPrice,
      this.trending,
      this.stock,
      this.minOrder,
      this.sampPrice,
      this.textOne,
      this.textTwo,
      this.avaTo,
      this.branded,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.image,
      this.avgRating,
      this.savedByLoggedUser});

  Trending.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryCode = json['country_code'];
    userId = json['user_id'];
    categoryId = json['category_id'];
    postTypeId = json['post_type_id'];
    title = json['title'];
    description = json['description'];
    tags = json['tags'];
    price = json['price'];
    negotiable = json['negotiable'];
    contactName = json['contact_name'];
    email = json['email'];
    phone = json['phone'];
    phoneHidden = json['phone_hidden'];
    address = json['address'];
    cityId = json['city_id'];
    lon = json['lon'];
    lat = json['lat'];
    ipAddr = json['ip_addr'];
    length = json['length'];
    width = json['width'];
    weight = json['weight'];
    height = json['height'];
    pickup = json['pickup'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    hyperDel = json['hyper_del'];
    sellerDel = json['seller_del'];
    visits = json['visits'];
    emailToken = json['email_token'];
    phoneToken = json['phone_token'];
    tmpToken = json['tmp_token'];
    verifiedEmail = json['verified_email'];
    verifiedPhone = json['verified_phone'];
    acceptTerms = json['accept_terms'];
    acceptMarketingOffers = json['accept_marketing_offers'];
    isPermanent = json['is_permanent'];
    reviewed = json['reviewed'];
    featured = json['featured'];
    archived = json['archived'];
    archivedAt = json['archived_at'];
    archivedManually = json['archived_manually'];
    deletionMailSentAt = json['deletion_mail_sent_at'];
    fbProfile = json['fb_profile'];
    partner = json['partner'];
    discountedPrice = json['discounted_price'];
    trending = json['trending'];
    stock = json['stock'];
    minOrder = json['min_order'];
    sampPrice = json['samp_price'];
    textOne = json['text_one'];
    textTwo = json['text_two'];
    avaTo = json['ava_to'];
    branded = json['branded'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
    avgRating = json['avg_rating'];
    // if (json['savedByLoggedUser'] != String) {
    //   savedByLoggedUser = <Null>[];
    //   json['savedByLoggedUser'].forEach((v) {
    //     savedByLoggedUser!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['country_code'] = this.countryCode;
    data['user_id'] = this.userId;
    data['category_id'] = this.categoryId;
    data['post_type_id'] = this.postTypeId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['tags'] = this.tags;
    data['price'] = this.price;
    data['negotiable'] = this.negotiable;
    data['contact_name'] = this.contactName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['phone_hidden'] = this.phoneHidden;
    data['address'] = this.address;
    data['city_id'] = this.cityId;
    data['lon'] = this.lon;
    data['lat'] = this.lat;
    data['ip_addr'] = this.ipAddr;
    data['length'] = this.length;
    data['width'] = this.width;
    data['weight'] = this.weight;
    data['height'] = this.height;
    data['pickup'] = this.pickup;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['hyper_del'] = this.hyperDel;
    data['seller_del'] = this.sellerDel;
    data['visits'] = this.visits;
    data['email_token'] = this.emailToken;
    data['phone_token'] = this.phoneToken;
    data['tmp_token'] = this.tmpToken;
    data['verified_email'] = this.verifiedEmail;
    data['verified_phone'] = this.verifiedPhone;
    data['accept_terms'] = this.acceptTerms;
    data['accept_marketing_offers'] = this.acceptMarketingOffers;
    data['is_permanent'] = this.isPermanent;
    data['reviewed'] = this.reviewed;
    data['featured'] = this.featured;
    data['archived'] = this.archived;
    data['archived_at'] = this.archivedAt;
    data['archived_manually'] = this.archivedManually;
    data['deletion_mail_sent_at'] = this.deletionMailSentAt;
    data['fb_profile'] = this.fbProfile;
    data['partner'] = this.partner;
    data['discounted_price'] = this.discountedPrice;
    data['trending'] = this.trending;
    data['stock'] = this.stock;
    data['min_order'] = this.minOrder;
    data['samp_price'] = this.sampPrice;
    data['text_one'] = this.textOne;
    data['text_two'] = this.textTwo;
    data['ava_to'] = this.avaTo;
    data['branded'] = this.branded;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image'] = this.image;
    data['avg_rating'] = this.avgRating;
    // if (this.savedByLoggedUser != null) {
    //   data['savedByLoggedUser'] =
    //       this.savedByLoggedUser!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}
