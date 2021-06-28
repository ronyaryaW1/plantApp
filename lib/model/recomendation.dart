import 'package:flutter/cupertino.dart';

class Recomendation {
  String title;
  String country;
  String image;
  String description;
  int price;

  Recomendation({
    @required this.title,
    @required this.country,
    @required this.image,
    @required this.description,
    @required this.price,
  });
}

var recomendationList = [
  Recomendation(
    country: 'Indonesia',
    title: 'Anggrek',
    price: 500,
    image: 'images/plant1.jpg',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
  ),
  Recomendation(
    country: 'Plantae',
    title: 'Mawar',
    price: 500,
    image: 'images/plant2.jpg',
    description:
        'Mawar adalah suatu jenis tanaman semak dari genus Rosa sekaligus nama bunga yang dihasilkan tanaman ini. Mawar liar terdiri dari 100 spesies lebih, kebanyakan tumbuh di belahan bumi utara yang berudara sejuk.',
  ),
  Recomendation(
    country: 'Indonesia',
    title: 'Beringin',
    price: 500,
    image: 'images/plant3.jpg',
    description:
        'Beringin, yang disebut juga waringin atau ara, dikenal sebagai tumbuhan pekarangan dan tumbuhan hias pot. Pemulia telah mengembangkan beringin berdaun loreng yang populer sebagai tanaman hias ruangan. Beringin juga sering digunakan sebagai objek bonsai. Beringin sangat akrab dengan budaya asli Indonesia',
  ),
  Recomendation(
    country: 'China',
    title: 'Pakcoy',
    price: 500,
    image: 'images/plant4.jpg',
    description:
        'Pakcoy atau bok choy merupakan jenis sayuran yang populer. Sayuran yang dikenal pula sebagai sawi sendok ini mudah dibudidayakan dan dapat dimakan segar atau diolah menjadi asinan',
  ),
  Recomendation(
    country: 'Malaysia',
    title: 'Kamboja',
    price: 500,
    image: 'images/plant5.jpg',
    description:
        'Kemboja, kamboja atau semboja adalah sekelompok tumbuhan dalam marga Plumeria. Bentuknya berupa pohon kecil dengan daun jarang namun tebal. Bunganya yang harumnya sangat khas, dengan mahkota berwarna putih hingga merah keunguan, biasanya lima helai',
  ),
  Recomendation(
    country: 'Gurun',
    title: 'Cactus',
    price: 500,
    image: 'images/plant6.jpg',
    description:
        'Kaktus adalah nama yang diberikan untuk anggota tumbuhan berbunga famili Cactaceae. Kaktus dapat tumbuh pada waktu yang lama tanpa air. Kaktus biasa ditemukan di daerah-daerah yang kering (gurun). ... Kaktus memiliki akar yang panjang untuk mencari air dan memperlebar penyerapan air dalam tanah.',
  ),
];
