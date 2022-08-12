class Events{
  String eventName;
  String location;
  String description;
  String eventImage;
  String organisers;


  Events(this.eventName, this.location, this.description, this.eventImage,
      this.organisers, this.dateTime);

  String dateTime;



  static List<Events> getEvents(){
    List<Events> events = [];
    events.add(Events(
      'Jersey Mania',
      'Bangwe Bush house',
      '',
      'Dijo media',
      'Jersey party late at night each ticket comes with a jersey and a round of drinks',
      '2022-08-20'
    ));
    events.add(Events(
        'Dash Colour Fest',
        'Jarring Park',
        '',
        'Dijo media',
        'Colour full festival full of people powdered colour and nice drinks and lots of food and child friendly entertainment',
        '2022-08-30'
    ));
    events.add(Events(
        'Chumas Cook out',
        'Mukuni Park',
        '',
        'Dijo media',
        'Cooking never got more competitive with this one invite your friends and family with their best dishes and various cuisines',
        '2022-08-30'
    ));

    return events;
  }
}