class realty{
  String property ;
  double area ;
  double price ;
  double review ;
  String city ;
  int roomNum ;
  int bathNum ;
  int parkNum ;
  String description ;
  bool park ;
  bool cctv ;
  bool security;
  bool ac ;
  String img;

  realty(this.property,this.area,this.price,this.review,this.city,this.roomNum,this.bathNum,this.parkNum,
      this.description,this.park,this.cctv,this.security,this.ac,this.img);
}
   List<realty> li=[
     realty('Ibe House', 2.789, 340000,4.3 ,'Los Angeles',3,2,2,
    "Loream Ipsum is simply dummy test of the printing and typesetting industry. Loream Ipsem has been the industry's standard dummy text ever since.",
         true, false,false,false,"assets/ho1.jpg"),
     realty('Hilton House', 1.555, 340000,4.1 ,'California',2,1,1,
         "Loream Ipsum is simply dummy test of the printing and typesetting industry. Loream Ipsem has been the industry's standard dummy text ever since.",
         true, true,false,false,"assets/ho2.jpg"),
     realty('Clinton villa', 2.089, 350000, 4.2,'Michigan',6,3,2,
         "Loream Ipsum is simply dummy test of the printing and typesetting industry. Loream Ipsem has been the industry's standard dummy text ever since.",
         true, true,true,true,"assets/ho3.jpg"),
     realty('Ibe House', 2.789, 340000,3.2 ,'Los Angeles',3,2,2,
         "Loream Ipsum is simply dummy test of the printing and typesetting industry. Loream Ipsem has been the industry's standard dummy text ever since.",
         true, false,false,false,"assets/ho4.jpg"),
     realty('Dorti villa', 3.945, 520000, 4.7,'Los Angeles',7,4,3,
         "Loream Ipsum is simply dummy test of the printing and typesetting industry. Loream Ipsem has been the industry's standard dummy text ever since.",
         true, true,true,true,"assets/ho5.jpg"),
   ];