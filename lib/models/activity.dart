class Activity{
  String? name;
  String? imageUrl;
  String? location;
  int? id;

  Activity(this.name, this.imageUrl, this.location, this.id);

  static List<Activity> getActivities(){
    List<Activity> activities = [];
    activities.add(Activity('Victoria Falls',
        'https://images.unsplash.com/photo-1619029383069-21d494034ed7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dmljdG9yaWElMjBmYWxsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        'livingstone',
        1));
    activities.add(Activity('Safari',
        'https://images.unsplash.com/photo-1576707736873-d4efb7d87266?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        'livingstone',
        1));
    return activities;
  }
}