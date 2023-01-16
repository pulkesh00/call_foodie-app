// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class Quotes {
  Quotes({
    this.quotes,
    this.total,
    this.skip,
    this.limit,
  });

  Quote? quotes;
  int? total;
  int? skip;
  int? limit;

  Quotes.fromJson(dynamic json) {
    quotes = Quote.fromJson(json["quotes"]);
    total = json["total"];
    skip = json["skip"];
    limit = json["limit"];
  }

  Map<String, dynamic> toMap() => {
        "quotes": quotes?.toMap(),
        "total": total,
        "skip": skip,
        "limit": limit,
      };
}

class Quote {
  Quote({
    this.id,
    this.quote,
    this.author,
  });

  int? id;
  String? quote;
  String? author;

  Quote.fromJson(dynamic json) {
    id = json["id"];
    quote = json["quote"];
    author = json["author"];
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "quote": quote,
        "author": author,
      };
}
