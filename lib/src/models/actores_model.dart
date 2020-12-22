 class Cast{
   List<Actor> actores=new List();// por si haya mas actores los busca y repite el proceso de imprimirlo
   Cast.fromJsonList(List<dynamic> jsonlist){
     if (jsonlist==null)return;
     jsonlist.forEach((item) {
        final actor=Actor.fromJsonMp(item);
        actores.add(actor);
      });

   }

 }




class Actor {
  int castId;
  String character;
  String creditId;
  int gender;
  int id;
  String name;
  int order;
  String profilePath;

  Actor({
    this.castId,
    this.character,
    this.creditId,
    this.gender,
    this.id,
    this.name,
    this.order,
    this.profilePath,
  });
  Actor.fromJsonMp(Map<String,dynamic>json){
    castId=json['cast_id'];
    character=json['character'];
    creditId=json['credit_id'];
    gender=json['gender'];
    id=json['id'];
    name=json['name'];
    order=json['order'];
    profilePath=json['profile_path'];
  }
   getFoto(){
    if (profilePath==null){
      return 'https://www.abc.net.au/news/image/8314104-1x1-940x940.jpg';
    }else{
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
  }}

}
