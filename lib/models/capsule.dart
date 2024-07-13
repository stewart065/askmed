import 'package:flutter/material.dart';
import 'dart:convert';

class capsules {
  final int id;
  final String titles,
      descriptions,
      storenames,
      medicinetyps,
      address2,
      typemeds;
  final List<String> images;
  final List<Color> colors;
  final double rating, prices;
  final bool isfavourites, ispopulars;
  final int stck;
  final int phones;

  capsules({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isfavourites = false,
    this.ispopulars = false,
    required this.titles,
    required this.prices,
    required this.descriptions,
    required this.storenames,
    required this.medicinetyps,
    required this.address2,
    required this.typemeds,
    required this.stck,
    required this.phones,
  });
}

List<capsules> capsoledemos = [
  capsules(
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
    titles: "Bioflu",
    prices: 64.99,
    descriptions: descriptionsc2,
    rating: 4.8,
    stck: 23,
    medicinetyps: "capsule",
    storenames: "PlayStation Store",
    address2: "panabilan",
    typemeds: "amoxicilin",
    phones: 09873455656,
    isfavourites: true,
    ispopulars: true,
  ),
  capsules(
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
    titles: "Symdex-d",
    prices: 50.5,
    descriptions: descriptionsc2,
    rating: 4.1,
    stck: 23,
    medicinetyps: "capsule",
    storenames: "PlayStation Store",
    address2: "panabilan",
    typemeds: "amoxicilin",
    phones: 09873455656,
    ispopulars: true,
  ),
  capsules(
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
    titles: "Bioflu",
    prices: 36.55,
    descriptions: descriptionsc2,
    rating: 4.1,
    stck: 23,
    medicinetyps: "capsule",
    storenames: "PlayStation Store",
    address2: "panabilan",
    typemeds: "amoxicilin",
    phones: 09873455656,
    isfavourites: true,
    ispopulars: true,
  ),
  capsules(
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
    titles: "Biogesic",
    prices: 20.20,
    descriptions: descriptionsc1,
    rating: 4.1,
    stck: 23,
    medicinetyps: "capsule",
    storenames: "PlayStation Store",
    address2: "panabilan",
    typemeds: "amoxicilin",
    phones: 09873455656,
    isfavourites: true,
  ),
  capsules(
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
    titles: "Symdex-d",
    prices: 64.99,
    descriptions: descriptionsc3,
    rating: 4.8,
    stck: 23,
    medicinetyps: "capsule",
    storenames: "PlayStation Store",
    address2: "panabilan",
    typemeds: "amoxicilin",
    phones: 09873455656,
    isfavourites: true,
    ispopulars: true,
  ),
  capsules(
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
    titles: "Biogesic",
    prices: 50.5,
    descriptions: descriptionsc1,
    rating: 4.1,
    stck: 23,
    medicinetyps: "capsule",
    storenames: "PlayStation Store",
    address2: "panabilan",
    typemeds: "amoxicilin",
    phones: 09873455656,
    ispopulars: true,
  ),
  capsules(
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
    titles: "Neozep",
    prices: 36.55,
    descriptions: descriptionsc1,
    rating: 4.1,
    stck: 23,
    medicinetyps: "capsule",
    storenames: "PlayStation Store",
    address2: "panabilan",
    typemeds: "amoxicilin23",
    phones: 09873455656,
    isfavourites: true,
    ispopulars: true,
  ),
  capsules(
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
    titles: "Neozep",
    prices: 20.20,
    descriptions: descriptionsc3,
    rating: 4.1,
    stck: 23,
    medicinetyps: "capsule",
    storenames: "PlayStation Store",
    address2: "panabilan",
    typemeds: "amoxicilin",
    phones: 09873455656,
    isfavourites: true,
  ),
];

const String descriptionsc1 =
    "A trusted brand of paracetamol, Paracetamol (Biogesic) is a medication that is typically used to relieve mild to moderate pain such as headache, backache, menstrual cramps, muscular strain, minor arthritis pain, toothache, and reduce fevers caused by illnesses such as the common cold and flu. Generally, Paracetamol (Biogesic) is safe to take on an empty stomach.";
const String descriptionsc2 =
    "Each tablet contains: Phenylephrine HCl 10 mg, Chlorphenamine Maleate 2 mg, Paracetamol 500 mg.";
const String descriptionsc3 =
    "Each 5 mL 1 teaspoonful syrup contains phenylephrine HCl 2.5 mg, chlorphenamine maleate 0.5 mg and paracetamol 125 mg  Each mL syrup (oral drops) contains phenylephrine HCl 1 mg and chlorphenamine maleate 0.8 mg.";

const String descriptionsc4 =
    "Symdex-D is indicated for the relief of runny nose, nasal congestion, post-nasal drip, itchy and weary eyes, fever, body pains, and headache associated with common colds, flu, minor upper respiratory infections, allergic rhinitis, and sinusitis.";
