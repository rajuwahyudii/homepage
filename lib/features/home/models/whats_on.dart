import 'package:homepage/features/home/models/redirect_internal_setting.dart';

class WhatsOn {
  int? id;
  String? slug;
  String? type;
  String? title;
  int? distance;
  int? diffDay;
  String? description;
  String? imageUrl;
  int? status;
  String? statusText;
  String? howToUse;
  String? termsAndCondition;
  String? url;
  String? startDate;
  String? endDate;
  int? standingAvailable;
  String? standingAvailableText;
  String? createdAt;
  String? whatsapp;
  String? eventDate;
  String? openGate;
  int? reservationType;
  String? reservationTypeText;
  int? availabilityType;
  String? availabilityTypeText;
  int? isPromoted;
  String? isPromotedText;
  bool? isPriceUploaded;
  int? reservationPaymentType;
  String? reservationPaymentTypeText;
  int? isSoldOut;
  int? isSoldOutStanding;
  String? credit;
  String? sponsor;
  String? generalAdmissionUrl;
  String? inclusionList;
  bool? useAffiliatorCode;
  int? maxStandingCapacity;
  String? talentDescriptionUrl;
  bool? isUsingTicket;
  String? houseRulesUrl;
  String? location;
  List<String>? tags;
  String? potraitImage;
  RedirectInternalSetting? redirectInternalSetting;

  WhatsOn({
    this.id,
    this.slug,
    this.type,
    this.title,
    this.distance,
    this.diffDay,
    this.description,
    this.imageUrl,
    this.status,
    this.statusText,
    this.howToUse,
    this.termsAndCondition,
    this.url,
    this.startDate,
    this.endDate,
    this.standingAvailable,
    this.standingAvailableText,
    this.createdAt,
    this.whatsapp,
    this.eventDate,
    this.openGate,
    this.reservationType,
    this.reservationTypeText,
    this.availabilityType,
    this.availabilityTypeText,
    this.isPromoted,
    this.isPromotedText,
    this.isPriceUploaded,
    this.reservationPaymentType,
    this.reservationPaymentTypeText,
    this.isSoldOut,
    this.isSoldOutStanding,
    this.credit,
    this.sponsor,
    this.generalAdmissionUrl,
    this.inclusionList,
    this.useAffiliatorCode,
    this.maxStandingCapacity,
    this.talentDescriptionUrl,
    this.isUsingTicket,
    this.houseRulesUrl,
    this.location,
    this.tags,
    this.potraitImage,
    this.redirectInternalSetting,
  });

  WhatsOn.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    type = json['type'];
    title = json['title'];
    distance = json['distance'];
    diffDay = json['diff_day'];
    description = json['description'];
    imageUrl = json['image_url'];
    status = json['status'];
    statusText = json['status_text'];
    howToUse = json['how_to_use'];
    termsAndCondition = json['terms_and_condition'];
    url = json['url'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    standingAvailable = json['standing_available'];
    standingAvailableText = json['standing_available_text'];
    createdAt = json['created_at'];
    whatsapp = json['whatsapp'];
    eventDate = json['event_date'];
    openGate = json['open_gate'];
    reservationType = json['reservation_type'];
    reservationTypeText = json['reservation_type_text'];
    availabilityType = json['availability_type'];
    availabilityTypeText = json['availability_type_text'];
    isPromoted = json['is_promoted'];
    isPromotedText = json['is_promoted_text'];
    isPriceUploaded = json['is_price_uploaded'];
    reservationPaymentType = json['reservation_payment_type'];
    reservationPaymentTypeText = json['reservation_payment_type_text'];
    isSoldOut = json['is_sold_out'];
    isSoldOutStanding = json['is_sold_out_standing'];
    credit = json['credit'];
    sponsor = json['sponsor'];
    generalAdmissionUrl = json['general_admission_url'];
    inclusionList = json['inclusion_list'];
    useAffiliatorCode = json['use_affiliator_code'];
    maxStandingCapacity = json['max_standing_capacity'];
    talentDescriptionUrl = json['talent_description_url'];
    isUsingTicket = json['is_using_ticket'];
    houseRulesUrl = json['house_rules_url'];
    location = json['location'];
    tags = json['tags'].cast<String>();
    potraitImage = json['potrait_image'];
    redirectInternalSetting =
        json['redirect_internal_setting'] != null
            ? new RedirectInternalSetting.fromJson(
              json['redirect_internal_setting'],
            )
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['type'] = this.type;
    data['title'] = this.title;
    data['distance'] = this.distance;
    data['diff_day'] = this.diffDay;
    data['description'] = this.description;
    data['image_url'] = this.imageUrl;
    data['status'] = this.status;
    data['status_text'] = this.statusText;
    data['how_to_use'] = this.howToUse;
    data['terms_and_condition'] = this.termsAndCondition;
    data['url'] = this.url;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['standing_available'] = this.standingAvailable;
    data['standing_available_text'] = this.standingAvailableText;
    data['created_at'] = this.createdAt;
    data['whatsapp'] = this.whatsapp;
    data['event_date'] = this.eventDate;
    data['open_gate'] = this.openGate;
    data['reservation_type'] = this.reservationType;
    data['reservation_type_text'] = this.reservationTypeText;
    data['availability_type'] = this.availabilityType;
    data['availability_type_text'] = this.availabilityTypeText;
    data['is_promoted'] = this.isPromoted;
    data['is_promoted_text'] = this.isPromotedText;
    data['is_price_uploaded'] = this.isPriceUploaded;
    data['reservation_payment_type'] = this.reservationPaymentType;
    data['reservation_payment_type_text'] = this.reservationPaymentTypeText;
    data['is_sold_out'] = this.isSoldOut;
    data['is_sold_out_standing'] = this.isSoldOutStanding;
    data['credit'] = this.credit;
    data['sponsor'] = this.sponsor;
    data['general_admission_url'] = this.generalAdmissionUrl;
    data['inclusion_list'] = this.inclusionList;
    data['use_affiliator_code'] = this.useAffiliatorCode;
    data['max_standing_capacity'] = this.maxStandingCapacity;
    data['talent_description_url'] = this.talentDescriptionUrl;
    data['is_using_ticket'] = this.isUsingTicket;
    data['house_rules_url'] = this.houseRulesUrl;
    data['location'] = this.location;
    data['tags'] = this.tags;
    data['potrait_image'] = this.potraitImage;
    if (this.redirectInternalSetting != null) {
      data['redirect_internal_setting'] =
          this.redirectInternalSetting!.toJson();
    }
    return data;
  }
}
