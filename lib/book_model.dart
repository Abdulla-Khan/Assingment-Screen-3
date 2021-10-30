class ShoeModel {
  final String name;
  final String decs;
  final String brand;
  final String imgPath;

  ShoeModel(
      {required this.name,
      required this.decs,
      required this.brand,
      required this.imgPath});
  static List<ShoeModel> list = [
    ShoeModel(
        name: "DONDA",
        decs: "2021 relaesed Greatest of Album of the Year by the Greatest Artist" +
            " having Triology of WeekEnd, Lil Baby and Kanye and some dope story telling.",
        brand: "Kanye West",
        imgPath: "assets/cover 1.jpg"),
    ShoeModel(
        name: "DAMN.",
        decs: "A unique album released in 2017 by one the Greatest Ever Kendrick Lamar(The Goat). This was " +
            "his Greatest Album got 24 nominations and Kendrick was awarded 4 Grammy's for this album ",
        brand: "Kendric Lamar",
        imgPath: "assets/cover2.jpg"),
    ShoeModel(
        name: "?",
        decs:
            "Some the saddest albums of this Genre. The reason behind the name is X is asking questions" +
                "one of his closests freind killed himself.",
        brand: "Xxxtentaction",
        imgPath: "assets/cover3.jpg"),
  ];
}
