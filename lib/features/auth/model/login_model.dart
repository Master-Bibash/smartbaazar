class LoginData {
  LoginData({
    required this.success,
    this.message,
    required this.result,
    required this.extra,
  });
  late final bool success;
  late final Null message;
  late final Result result;
  late final Extra extra;

  LoginData.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = null;
    result = Result.fromJson(json['result']);
    extra = Extra.fromJson(json['extra']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['message'] = message;
    _data['result'] = result.toJson();
    _data['extra'] = extra.toJson();
    return _data;
  }
}

class Result {
  Result({
    required this.id,
    required this.name,
    required this.username,
    required this.createdAtFormatted,
    required this.photoUrl,
    required this.countryCode,
    required this.languageCode,
    this.userTypeId,
    required this.genderId,
    required this.photo,
    this.about,
    required this.phone,
    required this.phoneHidden,
    required this.email,
    required this.dob,
    required this.gender,
    required this.password,
    this.rememberToken,
    this.canBeImpersonate,
    required this.disableComments,
    required this.ipAddr,
    required this.provider,
    required this.providerId,
    this.emailToken,
    required this.phoneToken,
    required this.verifiedEmail,
    required this.verifiedPhone,
    required this.acceptTerms,
    required this.acceptMarketingOffers,
    required this.timeZone,
    required this.blocked,
    required this.ims,
    required this.closed,
    required this.lastActivity,
  });
  late final int id;
  late final String name;
  late final String username;
  late final String createdAtFormatted;
  late final String photoUrl;
  late final String countryCode;
  late final String languageCode;
  late final Null userTypeId;
  late final String genderId;
  late final String photo;
  late final Null about;
  late final String phone;
  late final String phoneHidden;
  late final String email;
  late final String dob;
  late final String gender;
  late final String password;
  late final Null rememberToken;
  late final Null canBeImpersonate;
  late final String disableComments;
  late final String ipAddr;
  late final String provider;
  late final String providerId;
  late final Null emailToken;
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

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    createdAtFormatted = json['created_at_formatted'];
    photoUrl = json['photo_url'];
    countryCode = json['country_code'];
    languageCode = json['language_code'];
    userTypeId = null;
    genderId = json['gender_id'];
    photo = json['photo'];
    about = null;
    phone = json['phone'];
    phoneHidden = json['phone_hidden'];
    email = json['email'];
    dob = json['dob'];
    gender = json['gender'];
    password = json['password'];
    rememberToken = null;
    canBeImpersonate = null;
    disableComments = json['disable_comments'];
    ipAddr = json['ip_addr'];
    provider = json['provider'];
    providerId = json['provider_id'];
    emailToken = null;
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
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['username'] = username;
    _data['created_at_formatted'] = createdAtFormatted;
    _data['photo_url'] = photoUrl;
    _data['country_code'] = countryCode;
    _data['language_code'] = languageCode;
    _data['user_type_id'] = userTypeId;
    _data['gender_id'] = genderId;
    _data['photo'] = photo;
    _data['about'] = about;
    _data['phone'] = phone;
    _data['phone_hidden'] = phoneHidden;
    _data['email'] = email;
    _data['dob'] = dob;
    _data['gender'] = gender;
    _data['password'] = password;
    _data['remember_token'] = rememberToken;
    _data['can_be_impersonate'] = canBeImpersonate;
    _data['disable_comments'] = disableComments;
    _data['ip_addr'] = ipAddr;
    _data['provider'] = provider;
    _data['provider_id'] = providerId;
    _data['email_token'] = emailToken;
    _data['phone_token'] = phoneToken;
    _data['verified_email'] = verifiedEmail;
    _data['verified_phone'] = verifiedPhone;
    _data['accept_terms'] = acceptTerms;
    _data['accept_marketing_offers'] = acceptMarketingOffers;
    _data['time_zone'] = timeZone;
    _data['blocked'] = blocked;
    _data['ims'] = ims;
    _data['closed'] = closed;
    _data['last_activity'] = lastActivity;
    return _data;
  }
}

class Extra {
  Extra({
    required this.authToken,
    required this.tokenType,
    required this.isAdmin,
  });
  late final String authToken;
  late final String tokenType;
  late final bool isAdmin;

  Extra.fromJson(Map<String, dynamic> json) {
    authToken = json['authToken'];
    tokenType = json['tokenType'];
    isAdmin = json['isAdmin'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['authToken'] = authToken;
    _data['tokenType'] = tokenType;
    _data['isAdmin'] = isAdmin;
    return _data;
  }
}
