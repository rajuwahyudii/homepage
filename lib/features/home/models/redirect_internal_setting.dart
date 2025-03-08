class RedirectInternalSetting {
	String? enum2;
	String? enumDescription;
	String? additionalParam;

	RedirectInternalSetting({this.enum2, this.enumDescription, this.additionalParam});

	RedirectInternalSetting.fromJson(Map<String, dynamic> json) {
		enum2 = json['enum'];
		enumDescription = json['enum_description'];
		additionalParam = json['additional_param'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['enum'] = enum2;
		data['enum_description'] = enumDescription;
		data['additional_param'] = additionalParam;
		return data;
	}
}