class Accommodation{
  int? id;
  String? lodgeName;
  String? imageUrl;
  String? location;
  String? description;
  String? services;
  String? amenities;

  Accommodation(this.id, this.lodgeName, this.imageUrl, this.location,
      this.description, this.services, this.amenities);

  static List<Accommodation> getAccommodation(){
    List<Accommodation> lodges = [];
    lodges.add(Accommodation(
        1,
        'Zambezi Ultima Lodge',
        'https://lh5.googleusercontent.com/p/AF1QipMGbr8Qu2w3QuZKo4L9_5Mq8qQU9xmjfkBYaXO-=w750-h813-p-k-no',
        'livingstone',
        'A cozy lodge with a swimming pool, bar and restaurant',
        'laundry, breakfast, car wash',
        'Wifi, Swimming pool, Parking, DSTV'
    ));
    lodges.add(Accommodation(
        1,
        'Avani',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNOnnbhxWbxgfSyDvN0INmdr1whta1m-GDXg&usqp=CAU',
        'livingstone',
        'A cozy lodge with a swimming pool, bar and restaurant',
        'laundry, breakfast, car wash',
        'Wifi, Swimming pool, Parking, DSTV'
    ));
    lodges.add(Accommodation(
        1,
        'Chrisma Hotel',
        'https://images.trvl-media.com/hotels/2000000/1860000/1856100/1856066/07f92956_z.jpg',
        'livingstone',
        'A cozy lodge with a swimming pool, bar and restaurant',
        'laundry, breakfast, car wash',
        'Wifi, Swimming pool, Parking, DSTV'
    ));

    return lodges;
  }

}