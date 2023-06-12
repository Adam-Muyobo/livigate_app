class Events{
  String eventName;
  String location;
  String description;
  String eventImage;
  String organisers;
  String ticketDetails;


  Events(this.eventName, this.location, this.description, this.eventImage,
      this.organisers, this.dateTime, this.ticketDetails);

  String dateTime;


  static List<Events> getEvents(){
    List<Events> events = [];
    events.add(Events(
      'Jersey Mania',
      'Bangwe Bush house',
        'Dijo media',
      'https://media.istockphoto.com/photos/friends-are-watching-the-soccer-match-and-drinking-beer-on-the-bar-picture-id903977120?b=1&k=20&m=903977120&s=170667a&w=0&h=k5IA1KZAVhWuzecDqOiqQgz0tbbDRnq3tXMigiV6RGc=',
      'Jersey party late at night each ticket comes with a jersey and a round of drinks',
      '2022-08-20',
      ''
    ));
    events.add(Events(
        'Dash Colour Fest',
        'Jarring Park',
        'Kings media',
        'https://images.unsplash.com/photo-1603228254119-e6a4d095dc59?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y29sb3VyJTIwZmVzdGl2YWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        'Colour full festival full of people powdered colour and nice drinks and lots of food and child friendly entertainment',
        '2022-08-30',
        ''
    ));
    events.add(Events(
        'Chumas Cook out',
        'Mukuni Park',
        'Dijo media',
        'https://media.istockphoto.com/photos/simple-round-charcoal-barbecue-gril-closeup-picture-id1390588637?b=1&k=20&m=1390588637&s=170667a&w=0&h=9BB4LNsfsXOz8NunfJBHSfuFYo-8UmAtVvy4Nd2EbSQ=',
        'Cooking never got more competitive with this one invite your friends and family with their best dishes and various cuisines',
        '2022-08-30',
        ''
    ));
    events.add(Events(
        'Smoke and Asphalt 11"',
        'NASDEC',
        'Zed Crank Shaft',
        'https://media.istockphoto.com/photos/classic-street-rod-automobile-lineup-at-frog-follies-car-show-picture-id171224108?b=1&k=20&m=171224108&s=170667a&w=0&h=wUd-fsQROjVSYWfPMJY_hcJfxxu2GCAFxxWZ7GsxEyA=',
        'We are back and better, come one come all to the 11th S and A motor show,'
            ' if you have been around you already know whats happening if you\'re here for the first time,'
            'well whether your a flair or performance person S and A has  all that for you get in gear and come cruise with us',
        '2022-08-30',
        ''
    ));
    events.add(Events(
        'Freshers Ball',
        'Mukuni Park',
        'Dijo media',
        'https://fixr-cdn.fixr.co/images/event/2022-08/f56de5372fab4fdeac0162954a610826.jpeg',
        'Cooking never got more competitive with this one invite your friends and family with their best dishes and various cuisines',
        '2022-08-30',
        ''
    ));
    events.add(Events(
        'Grammys',
        'Mukuni Park',
        'Dijo media',
        'https://images.unsplash.com/photo-1518893883800-45cd0954574b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z3JhbW15c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        'Cooking never got more competitive with this one invite your friends and family with their best dishes and various cuisines',
        '2022-08-30',
        ''
    ));
    events.add(Events(
        'Semester ShutDown',
        'Mukuni Park',
        'Dijo media',
        'https://www.duplex.cz/wp-content/uploads/2019/05/semester_shutdown_09.5_10.5.jpg',
        'Cooking never got more competitive with this one invite your friends and family with their best dishes and various cuisines',
        '2022-08-30',
        ''
    ));
    events.add(Events(
        'The Big Bang Release',
        'Mukuni Park',
        'Dijo media',
        'https://media.istockphoto.com/photos/catwalk-picture-id182210083?b=1&k=20&m=182210083&s=170667a&w=0&h=JuPKaD66aq9ssyxQU83e9I4aJBZM2a6dX0gP-i17ghY=',
        'Cooking never got more competitive with this one invite your friends and family with their best dishes and various cuisines',
        '2022-08-30',
        ''
    ));

    return events;
  }
}