class LoginInputModel {
  LoginInputModel({
    this.id,
    this.email,
    this.name,
    this.password,
    this.apiToken,
    this.deviceToken,
    this.phone,
    this.address,
    this.bio,
    this.media,
  });

  dynamic id;
  String? email;
  dynamic name;
  String? password;
  dynamic apiToken;
  String? deviceToken;
  dynamic phone;
  dynamic address;
  dynamic bio;
  dynamic media;
}
