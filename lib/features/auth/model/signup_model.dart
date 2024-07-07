class SignupModel {
  bool? success;
  String? message;
  Result? result;
  Extra? extra;

  SignupModel({this.success, this.message, this.result, this.extra});

  SignupModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
    extra = json['extra'] != null ? new Extra.fromJson(json['extra']) : null;
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
  int? id;
  String? name;
  String? username;
  String? createdAtFormatted;
  String? photoUrl;

  Result(
      {this.id,
      this.name,
      this.username,
      this.createdAtFormatted,
      this.photoUrl});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    createdAtFormatted = json['created_at_formatted'];
    photoUrl = json['photo_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['created_at_formatted'] = this.createdAtFormatted;
    data['photo_url'] = this.photoUrl;
    return data;
  }
}

class Extra {
  SendEmailVerification? sendEmailVerification;
  SendPhoneVerification? sendPhoneVerification;
  Mail? mail;

  Extra({this.sendEmailVerification, this.sendPhoneVerification, this.mail});

  Extra.fromJson(Map<String, dynamic> json) {
    sendEmailVerification = json['sendEmailVerification'] != null
        ? new SendEmailVerification.fromJson(json['sendEmailVerification'])
        : null;
    sendPhoneVerification = json['sendPhoneVerification'] != null
        ? new SendPhoneVerification.fromJson(json['sendPhoneVerification'])
        : null;
    mail = json['mail'] != null ? new Mail.fromJson(json['mail']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sendEmailVerification != null) {
      data['sendEmailVerification'] = this.sendEmailVerification!.toJson();
    }
    if (this.sendPhoneVerification != null) {
      data['sendPhoneVerification'] = this.sendPhoneVerification!.toJson();
    }
    if (this.mail != null) {
      data['mail'] = this.mail!.toJson();
    }
    return data;
  }
}

class SendEmailVerification {
  bool? success;
  bool? emailVerificationSent;
  String? message;

  SendEmailVerification(
      {this.success, this.emailVerificationSent, this.message});

  SendEmailVerification.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    emailVerificationSent = json['emailVerificationSent'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['emailVerificationSent'] = this.emailVerificationSent;
    data['message'] = this.message;
    return data;
  }
}

class SendPhoneVerification {
  bool? success;
  bool? phoneVerificationSent;
  String? message;

  SendPhoneVerification(
      {this.success, this.phoneVerificationSent, this.message});

  SendPhoneVerification.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    phoneVerificationSent = json['phoneVerificationSent'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['phoneVerificationSent'] = this.phoneVerificationSent;
    data['message'] = this.message;
    return data;
  }
}

class Mail {
  bool? success;
  String? message;

  Mail({this.success, this.message});

  Mail.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    return data;
  }
}
