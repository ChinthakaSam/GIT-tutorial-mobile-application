// IT17091626
// P.G.C.B. Samarakoon
// CTSE - SE4010
// Flutter Mobile App - Assignment

// Model class using as a table for the database
class ProgressModel {
  int pid;
  String _topic;
  String _date;

  // constructor
  ProgressModel(this._topic, this._date);

  // Maping objects
  ProgressModel.map(dynamic obj) {
    this._topic = obj['topic'];
    this._date = obj['date'];
  }

  String get topic => _topic;

  String get date => _date;

  //return a map from a Texts object
  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['topic'] = topic;
    map['date'] = _date;
    return map;
  }

  void setID(int pid) {
    this.pid = pid;
  }
}
