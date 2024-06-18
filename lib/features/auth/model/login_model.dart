class LoginData {
  late final bool success;
  late final String message;
  late final Result result;
  late final Extra extra;

  LoginData(
      {required this.success,
      required this.message,
      required this.result,
      required this.extra});

  LoginData.fromJson(Map<String, dynamic> json) {
    success = json['success'] ?? false;
    message = json['message'] ?? '';
    result = Result.fromJson(json['result']);
    extra = Extra.fromJson(json['extra']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    if (this.extra != null) {
      data['extra'] = this.extra!.toJson();
    }
    return data;
  }
}

class Result {
  late final int id;
  late final String name;
  late final String username;
  late final String createdAtFormatted;
  late final String photoUrl;
  late final String countryCode;
  late final String languageCode;
  late final String userTypeId;
  late final String genderId;
  late final String photo;
  late final String about;
  late final String phone;
  late final String phoneHidden;
  late final String email;
  late final String dob;
  late final String gender;
  late final String password;
  late final String rememberToken;
  late final String canBeImpersonate;
  late final String disableComments;
  late final String ipAddr;
  late final String provider;
  late final String providerId;
  late final String emailToken;
  late final String phoneToken;
  late final String verifiedEmail;
  late final String verifiedPhone;
  late final String acceptTerms;
  late final String acceptMarketingOffers;
  late final String timeZone;
  late final String blocked;
  late final String ims;
  late final String closed;
  late final String lastActivity;
  Result(
      {required this.id,
      required this.name,
      required this.username,
      required this.createdAtFormatted,
      required this.photoUrl,
      required this.countryCode,
      required this.languageCode,
      required this.userTypeId,
      required this.genderId,
      required this.photo,
      required this.about,
      required this.phone,
      required this.phoneHidden,
      required this.email,
      required this.dob,
      required this.gender,
      required this.password,
      required this.rememberToken,
      required this.canBeImpersonate,
      required this.disableComments,
      required this.ipAddr,
      required this.provider,
      required this.providerId,
      required this.emailToken,
      required this.phoneToken,
      required this.verifiedEmail,
      required this.verifiedPhone,
      required this.acceptTerms,
      required this.acceptMarketingOffers,
      required this.timeZone,
      required this.blocked,
      required this.ims,
      required this.closed,
      required this.lastActivity});
  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    createdAtFormatted = json['created_at_formatted'];
    photoUrl = json['photo_url'];
    countryCode = json['country_code'];
    languageCode = json['language_code'];
    userTypeId = json['user_type_id'];
    genderId = json['gender_id'];
    photo = json['photo'];
    about = json['about'];
    phone = json['phone'];
    phoneHidden = json['phone_hidden'];
    email = json['email'];
    dob = json['dob'];
    gender = json['gender'];
    password = json['password'];
    rememberToken = json['remember_token'];
    canBeImpersonate = json['can_be_impersonate'];
    disableComments = json['disable_comments'];
    ipAddr = json['ip_addr'];
    provider = json['provider'];
    providerId = json['provider_id'];
    emailToken = json['email_token'];
    phoneToken = json['phone_token'];
    verifiedEmail = json['verified_email'];
    verifiedPhone = json['verified_phone'];
    acceptTerms = json['accept_terms'];
    acceptMarketingOffers = json['accept_marketing_offers'];
    timeZone = json['time_zone'];
    blocked = json['blocked'];
    ims = json['ims'];
    closed = json['closed'];
    lastActivity = json['last_activity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['created_at_formatted'] = this.createdAtFormatted;
    data['photo_url'] = this.photoUrl;
    data['country_code'] = this.countryCode;
    data['language_code'] = this.languageCode;
    data['user_type_id'] = this.userTypeId;
    data['gender_id'] = this.genderId;
    data['photo'] = this.photo;
    data['about'] = this.about;
    data['phone'] = this.phone;
    data['phone_hidden'] = this.phoneHidden;
    data['email'] = this.email;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    data['password'] = this.password;
    data['remember_token'] = this.rememberToken;
    data['can_be_impersonate'] = this.canBeImpersonate;
    data['disable_comments'] = this.disableComments;
    data['ip_addr'] = this.ipAddr;
    data['provider'] = this.provider;
    data['provider_id'] = this.providerId;
    data['email_token'] = this.emailToken;
    data['phone_token'] = this.phoneToken;
    data['verified_email'] = this.verifiedEmail;
    data['verified_phone'] = this.verifiedPhone;
    data['accept_terms'] = this.acceptTerms;
    data['accept_marketing_offers'] = this.acceptMarketingOffers;
    data['time_zone'] = this.timeZone;
    data['blocked'] = this.blocked;
    data['ims'] = this.ims;
    data['closed'] = this.closed;
    data['last_activity'] = this.lastActivity;
    return data;
  }
}

class Extra {
  late final String authToken;
  late final String tokenType;
  late final bool isAdmin;

  Extra(
      {required this.authToken,
      required this.tokenType,
      required this.isAdmin});

  Extra.fromJson(Map<String, dynamic> json) {
    authToken = json['authToken'];
    tokenType = json['tokenType'];
    isAdmin = json['isAdmin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['authToken'] = this.authToken;
    data['tokenType'] = this.tokenType;
    data['isAdmin'] = this.isAdmin;
    return data;
  }
}
