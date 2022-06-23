class THome {
  String? status;
  int? totalResults;

  THome({this.status, this.totalResults});

  THome.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    data['totalResults'] = this.totalResults;

    return data;
  }
}
