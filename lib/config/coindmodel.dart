import 'package:flutter/material.dart';

class Coin {
  Coin({
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.change,
    required this.changePrecentage,
  });

  String name;
  String symbol;
  String imageUrl;
  num price;
  num change;
  num changePrecentage;

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      name: json['name'],
      symbol: json['symbol'],
      imageUrl: json['image'],
      price: json['current_price'],
      change: json['price_change_24h'],
      changePrecentage: json['price_change_percentage_24h'],
    );
  }
}

List<Coin> coinlist = [];
