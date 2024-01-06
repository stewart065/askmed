import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description, storeName, medicinetyp, address, typemed;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;
  final int stck;
  final int phone;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
    required this.storeName,
    required this.medicinetyp,
    required this.address,
    required this.typemed,
    required this.stck,
    required this.phone,
  });
}

// List<Product> demoProducts = [];

// Future<List<Product>> getProducts() async {
//   List<Product> products = [];

//   var response =
//       await http.get(Uri.https('localhost:7070', 'api/appnewapi/getInvt'));
//   var jsonData = jsonDecode(response.body);

//   for (var eachProd in jsonData) {
//     Product prd = Product(
//       id: eachProd['id'],
//       title: eachProd['mendname'],
//       description: eachProd['medis'],
//       storeName: eachProd['storeName'],
//       medicinetyp: eachProd['medicinetyp'],
//       address: eachProd['address'],
//       typemed: eachProd['typemed'],
//       images: [],
//       colors: [],
//       price: eachProd['price'].toString(),
//       rating: eachProd['rating'].toDouble(),
//       stck: eachProd['stck'],
//       isFavourite: eachProd['isFavourite'],
//       isPopular: eachProd['isPopular'],
//     );

//     demoProducts.add(prd);
//     // print(demoProducts);
//   }

//   return demoProducts;
// }

// List<Product> products = [];
// Future getProdActive() async {
//   products.clear();
//   var response =
//       await http.get(Uri.https('localhost:7070', 'api/appnewapi/getInvt'));
//   var jsonData = jsonDecode(response.body);

//   for (var eachProd in jsonData) {
//     final prd = Product(
//       id: eachProd['id'],
//       title: eachProd['productId'],
//       description: eachProd['productname'],
//       storeName: eachProd['status'],
//       stck: eachProd['stock'],
//     );
//     products.add(prd);
//   }
//   //print(products);
//   print(products.length);
// }
// Future<List<Product>> getProdActive() async {
//   products.clear();

//   var response =
//       await http.get(Uri.https('https://localhost:7070/api/appnewapi/getInvt'));
//   var jsonData = jsonDecode(response.body);

//   for (var eachProd in jsonData) {
//     final prd = Product(
//       id: eachProd['id'],
//       title: eachProd['mendname'], // Adjust this to match your JSON key
//       description: eachProd['medis'], // Adjust this to match your JSON key
//       storeName: eachProd['storeName'], // Adjust this to match your JSON key
//       medicinetyp:
//           eachProd['medicinetyp'], // Adjust this to match your JSON key
//       address: eachProd['address'], // Adjust this to match your JSON key
//       typemed: eachProd['typemed'], // Adjust this to match your JSON key
//       images: [], // You might need to fetch images from eachProd['images'] if available
//       colors: [], // Colors can be populated similarly
//       price: eachProd['price'].toDouble(), // Adjust this to match your JSON key
//       rating:
//           eachProd['rating'].toDouble(), // Adjust this to match your JSON key
//       stck: eachProd['stck'],
//       isFavourite:
//           eachProd['isFavourite'], // Adjust this to match your JSON key
//       isPopular: eachProd['isPopular'], // Adjust this to match your JSON key
//     );
//     products.add(prd);
//   }
//   return products;
// }

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/Bioflu_Main.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Bioflu",
    price: 64.99,
    description: description2,
    rating: 4.8,
    stck: 23,
    medicinetyp: "tablet",
    storeName: "PlayStation Store",
    address: "panabilan",
    typemed: "amoxicilin",
    phone: 09873455656,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/sym.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Symdex-d",
    price: 50.5,
    description: description2,
    rating: 4.1,
    stck: 23,
    medicinetyp: "tablet",
    storeName: "PlayStation Store",
    address: "panabilan",
    typemed: "amoxicilin",
    phone: 09873455656,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/Bioflu_Main.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Bioflu",
    price: 36.55,
    description: description2,
    rating: 4.1,
    stck: 23,
    medicinetyp: "tablet",
    storeName: "PlayStation Store",
    address: "panabilan",
    typemed: "amoxicilin",
    phone: 09873455656,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/werrr.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Biogesic",
    price: 20.20,
    description: description,
    rating: 4.1,
    stck: 23,
    medicinetyp: "tablet",
    storeName: "PlayStation Store",
    address: "panabilan",
    typemed: "amoxicilin",
    phone: 09873455656,
    isFavourite: true,
  ),
  Product(
    id: 1,
    images: [
      "assets/images/sym.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Symdex-d",
    price: 64.99,
    description: description3,
    rating: 4.8,
    stck: 23,
    medicinetyp: "tablet",
    storeName: "PlayStation Store",
    address: "panabilan",
    typemed: "amoxicilin",
    phone: 09873455656,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/werrr.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Biogesic",
    price: 50.5,
    description: description,
    rating: 4.1,
    stck: 23,
    medicinetyp: "tablet",
    storeName: "PlayStation Store",
    address: "panabilan",
    typemed: "amoxicilin",
    phone: 09873455656,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/awdf.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Neozep",
    price: 36.55,
    description: description3,
    rating: 4.1,
    stck: 23,
    medicinetyp: "tablet",
    storeName: "PlayStation Store",
    address: "panabilan",
    typemed: "amoxicilin23",
    phone: 09873455656,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/awdf.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Neozep",
    price: 20.20,
    description: description3,
    rating: 4.1,
    stck: 23,
    medicinetyp: "tablet",
    storeName: "PlayStation Store",
    address: "panabilan",
    typemed: "amoxicilin",
    phone: 09873455656,
    isFavourite: true,
  ),
];

const String description =
    "A trusted brand of paracetamol, Paracetamol (Biogesic) is a medication that is typically used to relieve mild to moderate pain such as headache, backache, menstrual cramps, muscular strain, minor arthritis pain, toothache, and reduce fevers caused by illnesses such as the common cold and flu. Generally, Paracetamol (Biogesic) is safe to take on an empty stomach.";
const String description2 =
    "Each tablet contains: Phenylephrine HCl 10 mg, Chlorphenamine Maleate 2 mg, Paracetamol 500 mg.";
const String description3 =
    "Each 5 mL 1 teaspoonful syrup contains phenylephrine HCl 2.5 mg, chlorphenamine maleate 0.5 mg and paracetamol 125 mg  Each mL syrup (oral drops) contains phenylephrine HCl 1 mg and chlorphenamine maleate 0.8 mg.";

const String description4 =
    "Symdex-D is indicated for the relief of runny nose, nasal congestion, post-nasal drip, itchy and weary eyes, fever, body pains, and headache associated with common colds, flu, minor upper respiratory infections, allergic rhinitis, and sinusitis.";
