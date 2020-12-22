// Generated by https://quicktype.io

//en comando pones paste jason as code y luego le pones lo que se y te genera esto

class Peliculas{

  List<Pelicula> items=new List();
  Peliculas();
  Peliculas.fromJsonList(List<dynamic> jsonlista){
    if (jsonlista==null)return;//checa el api si no hay nada regresa nada
    for (var item in jsonlista){//si hay algo checa toda la api
      final pelicula= new Pelicula.fromJsonMap(item);//la lista la manda a pelicula
      items.add(pelicula);//y la guarda en items
    }

  }//para recibir la lista de las peliculas
}

class Pelicula {

  String dobleId;// por si la pelicula esta en populares y en cartelera se cambia la id

  double popularity;
  int voteCount;
  bool video;
  String posterPath;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  double voteAverage;
  String overview;
  String releaseDate;

  Pelicula({
    this.popularity,
    this.voteCount,
    this.video,
    this.posterPath,
    this.id,
    this.adult,
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.title,
    this.voteAverage,
    this.overview,
    this.releaseDate,
  });

  Pelicula.fromJsonMap(Map<String,dynamic>json/*nombre*/){//es un metodo
    popularity        =json['popularity']/1;//sobre uno por que si es un int se convierte a double
    voteCount         =json['vote_count'];// si pones un breakpoint(puntito rojo a lado) y pones cursor en json muestra los valores que tiene
    video             =json['video'];
    posterPath        =json['poster_path'];
    id                =json['id'];
    adult             =json['adult'];
    backdropPath      =json['backdrop_path'] ;
    originalLanguage  =json['original_language'];
    originalTitle     =json['original_title'];
    genreIds          =json['genre_ids'].cast<int>();//para convertir la lista a enteros
    title             =json['title'];
    voteAverage       =json['vote_average']/1;
    overview          =json['overview'];
    releaseDate       =json['release_date'];

  }
  getPosterImg(){
    if (posterPath==null){
      return 'https://sisterhoodofstyle.com/wp-content/uploads/2018/02/no-image-1.jpg';
    }else{
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
  }}

  getBackgroundImg(){
    if (posterPath==null){
      return 'https://sisterhoodofstyle.com/wp-content/uploads/2018/02/no-image-1.jpg';
    }else{
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
  }}
  
  
}
