class ModelMouse {
  final String brand;
  final String seri;
  final double rating;
  final String descripsions;
  final String img;
  const ModelMouse({
    required this.brand,
    required this.seri,
    required this.descripsions,
    required this.rating,
    required this.img,
  });
}

const List<ModelMouse> listModelMouse = [
  ModelMouse(
      brand: "Logitech",
      seri: "G Pro",
      descripsions:
          "PRO Wireless was designed to be the ultimate gaming mouse for esports professionals. Over a 2 year period, Logitech G collaborated with more than 50 professional players to find the perfect shape, weight and feel combined with our LIGHTSPEED wireless and HERO 25k sensor technologies.",
      rating: 4.2,
      img: "assets/img/lg1.png"),
  ModelMouse(
      brand: "Razer",
      seri: "Viper V2 Pro",
      descripsions:
          "Ultra-lightweight and Ultra-fast wireless Esports mouse with right-handed Symmetrical, And battery life Up to 80 hours (constant motion at 1000Hz)",
      rating: 4.7,
      img: "assets/img/v2pro.png"),
  ModelMouse(
      brand: "StealSeries",
      seri: "Rival 3",
      descripsions:
          "The Rival 3 Wireless utilizes brand new Quantum 2.0 Dual Wireless technology to provide ultra-low latency wireless with up to 400+ hours, plus two types of wireless connectivity for precision performance and versatility year-round.",
      rating: 4.4,
      img: "assets/img/rv3.png"),
  ModelMouse(
      brand: "Fantech",
      seri: "XD3",
      descripsions:
          "Helios XD3 didesain dengan bentuk dan grip terbaik sehingga akan sangat nyaman ketika di genggam, Dilengkapi dengan 6 tombol yang dapat diprogram, kekuatan mouse Helios XD3 yang akan tetap hidup sampai dengan 50 juta klik",
      rating: 4.5,
      img: "assets/img/xd3.png"),
];
