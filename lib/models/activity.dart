class Activity{
  String? name;
  String? imageUrl;
  String? location;
  String? description;
  int? id;


  Activity(this.name, this.imageUrl, this.location, this.id, this.description);

  static List<Activity> getActivities(){
    List<Activity> activities = [];
    activities.add(Activity('Victoria Falls',
        'https://images.unsplash.com/photo-1619029383069-21d494034ed7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dmljdG9yaWElMjBmYWxsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        'livingstone',
        1,
      'A refreshing visit to the mighty victoria falls or as the locals call it the "Mosi-o-tunya" which means the smoke that thunders.',
    ));
    activities.add(Activity('Safari',
        'https://images.unsplash.com/photo-1576707736873-d4efb7d87266?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        'livingstone',
        2,
        'Go on an immersive game drive to the national game park and see the various wild life in the area',
    ));
    activities.add(Activity('Quad Biking',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM-1HlqtCJF4H_Bsq2ElihSUNfx861R132zA&usqp=CAU',
        'livingstone',
        2,
        'Try to get a little adrenaline rush? our quad biking is a perfect activity for you ',
    ));
    return activities;
  }
}