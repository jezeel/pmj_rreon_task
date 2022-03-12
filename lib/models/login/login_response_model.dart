// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

class LoginResponseModel {
  LoginResponseModel({
    this.success,
    this.data,
    this.message,
  });

  bool? success;
  Data? data;
  String? message;

  factory LoginResponseModel.fromRawJson(String str) => LoginResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
    success: json["success"],
    data: Data.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data!.toJson(),
    "message": message,
  };
}

class Data {
  Data({
    this.id,
    this.name,
    this.email,
    this.apiToken,
    this.deviceToken,
    this.stripeId,
    this.cardBrand,
    this.cardLastFour,
    this.trialEndsAt,
    this.braintreeId,
    this.paypalEmail,
    this.createdAt,
    this.updatedAt,
    this.customFields,
    this.hasMedia,
    this.media,
  });

  int? id;
  String? name;
  String? email;
  String? apiToken;
  String? deviceToken;
  dynamic stripeId;
  dynamic cardBrand;
  dynamic cardLastFour;
  dynamic trialEndsAt;
  dynamic braintreeId;
  dynamic paypalEmail;
  DateTime? createdAt;
  DateTime? updatedAt;
  CustomFields? customFields;
  bool? hasMedia;
  List<Media>? media;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    apiToken: json["api_token"],
    deviceToken: json["device_token"],
    stripeId: json["stripe_id"],
    cardBrand: json["card_brand"],
    cardLastFour: json["card_last_four"],
    trialEndsAt: json["trial_ends_at"],
    braintreeId: json["braintree_id"],
    paypalEmail: json["paypal_email"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    customFields: CustomFields.fromJson(json["custom_fields"]),
    hasMedia: json["has_media"],
    media: List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "api_token": apiToken,
    "device_token": deviceToken,
    "stripe_id": stripeId,
    "card_brand": cardBrand,
    "card_last_four": cardLastFour,
    "trial_ends_at": trialEndsAt,
    "braintree_id": braintreeId,
    "paypal_email": paypalEmail,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "custom_fields": customFields!.toJson(),
    "has_media": hasMedia,
    "media": List<dynamic>.from(media!.map((x) => x.toJson())),
  };
}

class CustomFields {
  CustomFields({
    this.phone,
    this.bio,
    this.address,
    this.verifiedPhone,
  });

  Address? phone;
  Address? bio;
  Address? address;
  Address? verifiedPhone;

  factory CustomFields.fromRawJson(String str) => CustomFields.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomFields.fromJson(Map<String, dynamic> json) => CustomFields(
    phone: Address.fromJson(json["phone"]),
    bio: Address.fromJson(json["bio"]),
    address: Address.fromJson(json["address"]),
    verifiedPhone: Address.fromJson(json["verifiedPhone"]),
  );

  Map<String, dynamic> toJson() => {
    "phone": phone!.toJson(),
    "bio": bio!.toJson(),
    "address": address!.toJson(),
    "verifiedPhone": verifiedPhone!.toJson(),
  };
}

class Address {
  Address({
    this.value,
    this.view,
    this.name,
  });

  String? value;
  String? view;
  String? name;

  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    value: json["value"] == null ? null : json["value"],
    view: json["view"] == null ? null : json["view"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "value": value == null ? null : value,
    "view": view == null ? null : view,
    "name": name,
  };
}

class Media {
  Media({
    this.id,
    this.modelType,
    this.modelId,
    this.collectionName,
    this.name,
    this.fileName,
    this.mimeType,
    this.disk,
    this.size,
    this.manipulations,
    this.customProperties,
    this.responsiveImages,
    this.orderColumn,
    this.createdAt,
    this.updatedAt,
    this.url,
    this.thumb,
    this.icon,
    this.formatedSize,
  });

  int? id;
  String? modelType;
  int? modelId;
  String? collectionName;
  String? name;
  String? fileName;
  String? mimeType;
  String? disk;
  int? size;
  List<dynamic>? manipulations;
  CustomProperties? customProperties;
  List<dynamic>? responsiveImages;
  int? orderColumn;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? url;
  String? thumb;
  String? icon;
  String? formatedSize;

  factory Media.fromRawJson(String str) => Media.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Media.fromJson(Map<String, dynamic> json) => Media(
    id: json["id"],
    modelType: json["model_type"],
    modelId: json["model_id"],
    collectionName: json["collection_name"],
    name: json["name"],
    fileName: json["file_name"],
    mimeType: json["mime_type"],
    disk: json["disk"],
    size: json["size"],
    manipulations: List<dynamic>.from(json["manipulations"].map((x) => x)),
    customProperties: CustomProperties.fromJson(json["custom_properties"]),
    responsiveImages: List<dynamic>.from(json["responsive_images"].map((x) => x)),
    orderColumn: json["order_column"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    url: json["url"],
    thumb: json["thumb"],
    icon: json["icon"],
    formatedSize: json["formated_size"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "model_type": modelType,
    "model_id": modelId,
    "collection_name": collectionName,
    "name": name,
    "file_name": fileName,
    "mime_type": mimeType,
    "disk": disk,
    "size": size,
    "manipulations": List<dynamic>.from(manipulations!.map((x) => x)),
    "custom_properties": customProperties!.toJson(),
    "responsive_images": List<dynamic>.from(responsiveImages!.map((x) => x)),
    "order_column": orderColumn,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "url": url,
    "thumb": thumb,
    "icon": icon,
    "formated_size": formatedSize,
  };
}

class CustomProperties {
  CustomProperties({
    this.uuid,
    this.userId,
    this.generatedConversions,
  });

  String? uuid;
  int? userId;
  GeneratedConversions? generatedConversions;

  factory CustomProperties.fromRawJson(String str) => CustomProperties.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomProperties.fromJson(Map<String, dynamic> json) => CustomProperties(
    uuid: json["uuid"],
    userId: json["user_id"],
    generatedConversions: GeneratedConversions.fromJson(json["generated_conversions"]),
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "user_id": userId,
    "generated_conversions": generatedConversions!.toJson(),
  };
}

class GeneratedConversions {
  GeneratedConversions({
    this.thumb,
    this.icon,
  });

  bool? thumb;
  bool? icon;

  factory GeneratedConversions.fromRawJson(String str) => GeneratedConversions.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GeneratedConversions.fromJson(Map<String, dynamic> json) => GeneratedConversions(
    thumb: json["thumb"],
    icon: json["icon"],
  );

  Map<String, dynamic> toJson() => {
    "thumb": thumb,
    "icon": icon,
  };
}














// import 'dart:convert';
//
// class LoginResponseModel {
//   LoginResponseModel({
//     this.success,
//     this.data,
//     this.message,
//   });
//
//   bool? success;
//   Data? data;
//   String? message;
//
//   LoginResponseModel.fromJson(Map <String, dynamic> json ) {
//     success = json["success"];
//     data = json["data"];
//     message = json["message"];
//
//   }
//
// }
//
//
//
// class Data {
//   Data({
//     this.id,
//     this.name,
//     this.email,
//     this.apiToken,
//     this.deviceToken,
//     this.stripeId,
//     this.cardBrand,
//     this.cardLastFour,
//     this.trialEndsAt,
//     this.braintreeId,
//     this.paypalEmail,
//     this.createdAt,
//     this.updatedAt,
//     this.customFields,
//     this.hasMedia,
//     this.media,
//   });
//
//   int? id;
//   String? name;
//   String? email;
//   String? apiToken;
//   String? deviceToken;
//   dynamic stripeId;
//   dynamic cardBrand;
//   dynamic cardLastFour;
//   dynamic trialEndsAt;
//   dynamic braintreeId;
//   dynamic paypalEmail;
//   DateTime? createdAt;
//   DateTime? updatedAt;
//   CustomFields? customFields;
//   bool? hasMedia;
//   List<Media>? media;
//
//   Data.fromJson(Map<String, dynamic> json ){
//     id = json["id"];
//     name = json["name"];
//     email = json["email"];
//     apiToken = json["apiTocken"];
//
//   }
//
// }
//
// class CustomFields {
//   CustomFields({
//     this.phone,
//     this.bio,
//     this.address,
//     this.verifiedPhone,
//   });
//
//   Address? phone;
//   Address? bio;
//   Address? address;
//   Address? verifiedPhone;
// }
//
// class Address {
//   Address({
//     this.value,
//     this.view,
//     this.name,
//   });
//
//   String? value;
//   String? view;
//   String? name;
// }
//
// class Media {
//   Media({
//     this.id,
//     this.modelType,
//     this.modelId,
//     this.collectionName,
//     this.name,
//     this.fileName,
//     this.mimeType,
//     this.disk,
//     this.size,
//     this.manipulations,
//     this.customProperties,
//     this.responsiveImages,
//     this.orderColumn,
//     this.createdAt,
//     this.updatedAt,
//     this.url,
//     this.thumb,
//     this.icon,
//     this.formatedSize,
//   });
//
//   int? id;
//   String? modelType;
//   int? modelId;
//   String? collectionName;
//   String? name;
//   String? fileName;
//   String? mimeType;
//   String? disk;
//   int? size;
//   List<dynamic>? manipulations;
//   CustomProperties? customProperties;
//   List<dynamic>? responsiveImages;
//   int? orderColumn;
//   DateTime? createdAt;
//   DateTime? updatedAt;
//   String? url;
//   String? thumb;
//   String? icon;
//   String? formatedSize;
// }
//
// class CustomProperties {
//   CustomProperties({
//     this.uuid,
//     this.userId,
//     this.generatedConversions,
//   });
//
//   String? uuid;
//   int? userId;
//   GeneratedConversions? generatedConversions;
// }
//
// class GeneratedConversions {
//   GeneratedConversions({
//     this.thumb,
//     this.icon,
//   });
//
//   bool? thumb;
//   bool? icon;
// }
